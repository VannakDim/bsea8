<?php

namespace App\Http\Controllers;

use App\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Image;

class BannerController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('admin.banner.index');
    }

    public function get()
    {
        $banners = Banner::all();

        return datatables()->of($banners)
            ->editColumn('created_at', '{{ date("d F Y", strtotime($created_at)) }}')
            ->editColumn('updated_at', '{{ date("d F Y", strtotime($updated_at)) }}')
            ->addColumn('username', function ($banners) {
                return '<a class="user-view-button" role="button" tabindex="0" data-id="' . $banners->user->id . '">' . $banners->user->name . '</a>';
            })
            ->addColumn('publication_status', function ($banners) {
                $is_demo = null;
                if (!is_null(is_demo_admin())) {
                    $is_demo = 'disabled';
                }
                if ($banners->publication_status == 1) {
                    $url = '';
                    if ($is_demo == null) {
                        $url = route('admin.unpublishedBannersRoute', $banners->id);
                    }
                    return '<a href="' . $url . '" class="btn btn-success btn-xs btn-flat btn-block" data-toggle="tooltip" data-original-title="Click to Unpublished"><i class="icon fa fa-arrow-down"></i>Published</a>';
                }
                $url = '';
                if ($is_demo == null) {
                    $url = route('admin.publishedBannersRoute', $banners->id);
                }
                return '<a href="' . $url . '" class="btn btn-warning btn-xs btn-flat btn-block" data-toggle="tooltip" data-original-title="Click to Published"><i class="icon fa fa-arrow-up"></i> Unpublished</a>';
            })
            ->addColumn('action', function ($banners) {
                $is_demo = '';
                if (!is_null(is_demo_admin())) {
                    $is_demo = 'disabled';
                }
                return '<button class="btn btn-info btn-xs view-button" data-id="' . $banners->id . '" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></button> <button class="btn btn-primary btn-xs edit-button" data-id="' . $banners->id . '" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs delete-button" data-id="' . $banners->id . '"data-toggle="tooltip" data-original-title="Delete"' . $is_demo . '><i class="fa fa-trash"></i></button>';
            })
            ->addColumn('image', function ($banners) {
                if (!empty($banners->image)) {
                    return '<img src="' . get_banner_image_url($banners->image) . '" width="60" class="img img-thumbnail img-responsive">';
                }
                return '<img src="' . get_banner_image_url('no_image.jpg') . '" width="60" class="img img-thumbnail img-responsive">';
            })
            ->rawColumns(['username', 'publication_status', 'action', 'image'])
            ->setRowId('id')
            ->make(true);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:250',
            'url' => 'nullable|max:250',
            'publication_status' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:10240|dimensions:max_width=5000,max_height=3000',
        ], [
            'title.required' => 'Caption is required.',
            'image.dimensions' => 'Max dimensions 350x600',
        ]);

        if ($validator->passes()) {
            $banner = Banner::create([
                'user_id' => Auth::user()->id,
                'url' => $request->input('url'),
                'title' => $request->input('title'),
                'publication_status' => $request->input('publication_status'),
            ]);

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $file_name = $this->image($banner->id, $image);
                Banner::find($banner->id)->update(['image' => $file_name]);
            }

            if (!empty($banner->id)) {
                $request->session()->flash('message', 'Banner add successfully.');
            } else {
                $request->session()->flash('exception', 'Operation failed !');
            }

            return Response::json(['success' => '1']);
        }
        return Response::json(['errors' => $validator->errors()]);
    }

    public function image($id, $image)
    {
        $filename = time() . '.jpg';
        $location = get_banner_image_path($filename);
        // create new image with transparent background color
        $background = Image::canvas(1900, 535);
        // read image file and resize it to 200x200
        $img = Image::make($image);
        // Image Height
        $height = $img->height();
        // Image Width
        $width = $img->width();
        $x = NULL;
        $y = NULL;
        if ($width < $height) {
            $y = 535;
        } else {
            $x = 1900;
        }
        //Resize Image
        $img->resize($x, $y, function ($constraint) {
            $constraint->aspectRatio();
            $constraint->upsize();
        });
        // insert resized image centered into background
        $background->insert($img, 'center');
        // save
        $background->save($location);
        return $filename;
    }

    public function show($id)
    {
        $banner = Banner::with(['user:id,name'])->where('id', $id)
            ->first();
        return json_encode($banner);
    }

    public function update(Request $request, $id)
    {
        $banner = Banner::find($id);

        $validator = $validator = Validator::make($request->all(), [
            'url' => 'nullable|max:250',
            'title' => 'required|max:250',
            'publication_status' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:10240|dimensions:max_width=5000,max_height=3000',
        ], [
            'title.required' => 'Title is required.',
        ]);

        if ($validator->passes()) {
            $banner->title = $request->get('title');
            $banner->url = $request->get('url');
            $banner->publication_status = $request->get('publication_status');

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $file_name = $this->image($banner->id, $image);
                $banner->image = $file_name;
            }

            $affected_row = $banner->save();

            if (!empty($affected_row)) {
                $request->session()->flash('message', 'Banner update successfully.');
            } else {
                $request->session()->flash('exception', 'Operation failed !');
            }
            return Response::json(['success' => '1']);
        }
        return Response::json(['errors' => $validator->errors()]);
    }

    public function published($id)
    {
        $affected_row = Banner::where('id', $id)
            ->update(['publication_status' => 1]);

        if (!empty($affected_row)) {
            return redirect()->back()->with('message', 'Published successfully.');
        }
        return redirect()->back()->with('exception', 'Operation failed !');
    }

    public function unpublished($id)
    {
        $affected_row = Banner::where('id', $id)
            ->update(['publication_status' => 0]);

        if (!empty($affected_row)) {
            return redirect()->back()->with('message', 'Unpublished successfully.');
        }
        return redirect()->back()->with('exception', 'Operation failed !');
    }

    public function destroy($id)
    {
        $banner = Banner::find($id);
        if ($banner) {
            if ($banner->image) {
                @unlink(get_banner_image_path($banner->image));
            }
            $banner->delete();
            return redirect()->back()->with('message', 'Banner delete successfully.');
        } else {
            return redirect()->back()->with('exception', 'Banner not found !');
        }
    }
}
