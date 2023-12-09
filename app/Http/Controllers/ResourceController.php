<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Resource;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Member;
use Image;


class ResourceController extends Controller
{
    public function __construct() {
		$this->middleware('auth');
	}

	public function index() {
		return view('admin.resource.index');
	}

	public function create() {
		return view('admin.resource.create');
	}

    public function destroy($id)
    {
        $resource = Resource::find($id);
        if ($resource) {
            if ($resource->thumbnail) {
                @unlink(get_resource_thumbnail_path($resource->thumbnail));
            }
            $resource->delete();
            return redirect()->back()->with('message', 'Resource delete successfully.');
        } else {
            return redirect()->back()->with('exception', 'Resource not found !');
        }
    }

    public function get() {
		$resources = Resource::all();

		return datatables()->of($resources)
			->editColumn('created_at', '{{ date("d F Y", strtotime($created_at)) }}')
			->editColumn('updated_at', '{{ date("d F Y", strtotime($updated_at)) }}')
			->addColumn('username', function ($resources) {
				return '<a class="user-view-button" role="button" tabindex="0" data-id="' . $resources->user->id . '">' . $resources->user->name . '</a>';})
			->addColumn('publication_status', function ($resources) {
				if ($resources->publication_status == 1) {
					return '<a href="' . route('admin.unpublishedPagesRoute', $resources->id) . '" class="btn btn-success btn-xs btn-flat btn-block" data-toggle="tooltip" data-original-title="Click to Unpublished"><i class="icon fa fa-arrow-down"></i>Published</a>';
				}
				return '<a href="' . route('admin.publishedPagesRoute', $resources->id) . '" class="btn btn-warning btn-xs btn-flat btn-block" data-toggle="tooltip" data-original-title="Click to Published"><i class="icon fa fa-arrow-up"></i> Unpublished</a>';})
			->addColumn('action', function ($resources) {
				return '<button class="btn btn-info btn-xs view-button" data-id="' . $resources->id . '" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></button> <button class="btn btn-primary btn-xs edit-button" data-id="' . $resources->id . '" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs delete-button" data-id="' . $resources->id . '"data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash"></i></button>';})
			->addColumn('thumbnail', function ($resource) {
				if (!empty($resource->thumbnail)) {
					return '<img src="' . get_resource_thumbnail_url($resource->thumbnail) . '" width="60" class="img img-thumbnail img-responsive">';
				}
				return '<img src="' . get_resource_thumbnail_url('no_image.jpg') . '" width="60" class="img img-thumbnail img-responsive">';})
			->rawColumns(['username', 'publication_status', 'action', 'thumbnail'])
			->setRowId('id')
			->make(true);
	}

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:250',
            // 'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:10240|dimensions:max_width=5000,max_height=3000',
        ], [
            'description.required' => 'Caption is required.',
            'resource_file.required' => 'Please choose file to upload.',
        ]);

        if ($validator->passes()) {
            $resource = Resource::create([
                'user_id' => Auth::user()->id,
                'title' => $request->input('title'),
                'description' => $request->input('description'),
                'publication_status' => $request->input('publication_status'),
            ]);

            if ($request->hasFile('resource_file')) {
                $file = $request->file('resource_file');
                $file->move(get_resource_file_path(), $file->getClientOriginalName());
                Resource::find($resource->id)->update(['filename' => $file->getClientOriginalName()]);
            }

            if ($request->hasFile('thumbnail')) {
                $image = $request->file('thumbnail');
                $file_name = $this->image($resource->id, $image);
                Resource::find($resource->id)->update(['thumbnail' => $file_name]);
            }

            if (!empty($resource->id)) {
                $request->session()->flash('message', 'Resource add successfully.');
            } else {
                $request->session()->flash('exception', 'Operation failed !');
            }

            return redirect()->back()->with('message', 'Resource add successfully.');
        }
        // return Response::json(['errors' => $validator->errors()]);
    }

    public function image($id, $image)
    {
        $filename = time() . '.jpg';
        $location = get_resource_thumbnail_path($filename);
        // create new image with transparent background color
        $background = Image::canvas(500, 500);
        // read image file and resize it to 200x200
        $img = Image::make($image);
        // Image Height
        $height = $img->height();
        // Image Width
        $width = $img->width();
        $x = NULL;
        $y = NULL;
        if ($width < $height) {
            $y = 500;
        } else {
            $x = 500;
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

}
