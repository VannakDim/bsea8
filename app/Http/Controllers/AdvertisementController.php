<?php

namespace App\Http\Controllers;

use App\Advertisement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Image;

class AdvertisementController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        return view('admin.advertisement.index');
    }

    public function get() {
        $advertisements = Advertisement::all();

        return datatables()->of($advertisements)
            ->editColumn('created_at', '{{ date("d F Y", strtotime($created_at)) }}')
            ->editColumn('updated_at', '{{ date("d F Y", strtotime($updated_at)) }}')
            ->addColumn('username', function ($advertisements) {
                return '<a class="user-view-button" role="button" tabindex="0" data-id="' . $advertisements->user->id . '">' . $advertisements->user->name . '</a>';})
            ->addColumn('publication_status', function ($advertisements) {
                if ($advertisements->publication_status == 1) {
                    return '<a href="' . route('admin.unpublishedAdvertisementsRoute', $advertisements->id) . '" class="btn btn-success btn-xs btn-flat btn-block" data-toggle="tooltip" data-original-title="Click to Unpublished"><i class="icon fa fa-arrow-down"></i>Published</a>';
                }
                return '<a href="' . route('admin.publishedAdvertisementsRoute', $advertisements->id) . '" class="btn btn-warning btn-xs btn-flat btn-block" data-toggle="tooltip" data-original-title="Click to Published"><i class="icon fa fa-arrow-up"></i> Unpublished</a>';})
            ->addColumn('action', function ($advertisements) {
                return '<button class="btn btn-info btn-xs view-button" data-id="' . $advertisements->id . '" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></button> <button class="btn btn-primary btn-xs edit-button" data-id="' . $advertisements->id . '" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs delete-button" data-id="' . $advertisements->id . '"data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash"></i></button>';})
            ->addColumn('image', function ($advertisements) {
                if (!empty($advertisements->image)) {
                    return '<img src="' . get_advertisement_image_url($advertisements->image) . '" width="60" class="img img-thumbnail img-responsive">';
                }
                return '<img src="' . get_advertisement_image_url('no_image.jpg') . '" width="60" class="img img-thumbnail img-responsive">';})
            ->rawColumns(['username', 'publication_status', 'action', 'image'])
            ->setRowId('id')
            ->make(true);
    }

        public function store(Request $request) {
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
            $advertisement = Advertisement::create([
                'user_id' => Auth::user()->id,
                'url' => $request->input('url'),
                'title' => $request->input('title'),
                'publication_status' => $request->input('publication_status'),
            ]);

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $file_name = $this->image($advertisement->id, $image);
                Advertisement::find($advertisement->id)->update(['image' => $file_name]);
            }

            if (!empty($advertisement->id)) {
                $request->session()->flash('message', 'Advertisement add successfully.');
            } else {
                $request->session()->flash('exception', 'Operation failed !');
            }

            return Response::json(['success' => '1']);
        }
        return Response::json(['errors' => $validator->errors()]);
    }

    public function image($id, $image) {
        $filename = time() . '.jpg';
        $location = get_advertisement_image_path($filename);
        // create new image with transparent background color
        $background = Image::canvas(360, 240);
        // read image file and resize it to 200x200
        $img = Image::make($image);
        // Image Height
        $height = $img->height();
        // Image Width
        $width = $img->width();
        $x = NULL;
        $y = NULL;
        if ($width < $height) {
            $y = 240;
        } else {
            $x = 360;
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

    public function show($id) {
        $advertisement = Advertisement::with(['user:id,name'])->where('id', $id)
            ->first();
        return json_encode($advertisement);
    }

    public function update(Request $request, $id) {
        $advertisement = Advertisement::find($id);

        $validator = $validator = Validator::make($request->all(), [
            'url' => 'nullable|max:250',
            'title' => 'required|max:250',
            'publication_status' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:10240|dimensions:max_width=5000,max_height=3000',
        ], [
            'title.required' => 'Title is required.',
        ]);

        if ($validator->passes()) {
            $advertisement->title = $request->get('title');
            $advertisement->url = $request->get('url');
            $advertisement->publication_status = $request->get('publication_status');

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $file_name = $this->image($advertisement->id, $image);
                $advertisement->image = $file_name;
            }

            $affected_row = $advertisement->save();

            if (!empty($affected_row)) {
                $request->session()->flash('message', 'Advertisement update successfully.');
            } else {
                $request->session()->flash('exception', 'Operation failed !');
            }
            return Response::json(['success' => '1']);
        }
        return Response::json(['errors' => $validator->errors()]);
    }

    public function published($id) {
        $affected_row = Advertisement::where('id', $id)
            ->update(['publication_status' => 1]);

        if (!empty($affected_row)) {
            return redirect()->back()->with('message', 'Published successfully.');
        }
        return redirect()->back()->with('exception', 'Operation failed !');
    }

    public function unpublished($id) {
        $affected_row = Advertisement::where('id', $id)
            ->update(['publication_status' => 0]);

        if (!empty($affected_row)) {
            return redirect()->back()->with('message', 'Unpublished successfully.');
        }
        return redirect()->back()->with('exception', 'Operation failed !');
    }

    public function destroy($id) {
        $advertisement = Advertisement::find($id);
        if (count($advertisement)) {
            if ($advertisement->image) {
                @unlink(get_advertisement_image_path($advertisement->image));
            }
            $advertisement->delete();
            return redirect()->back()->with('message', 'Advertisement delete successfully.');
        } else {
            return redirect()->back()->with('exception', 'Advertisement not found !');
        }
    }
}
