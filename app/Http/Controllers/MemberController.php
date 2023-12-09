<?php

namespace App\Http\Controllers;

use App\Member;
use App\Type;
use App\Product;
use App\Country;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Image;

class MemberController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('admin.member.index'); 
    }

    public function create() {
		$types = Type::all();
		$products = Product::all();
		$countries = Country::all();
		return view('admin.member.create', compact('types','countries','products'));
	}


    // Collecting data to view
    public function get()
    {
        $members = Member::all();

        return datatables()->of($members)
            ->editColumn('created_at', '{{ date("d F Y", strtotime($created_at)) }}')
            ->editColumn('updated_at', '{{ date("d F Y", strtotime($updated_at)) }}')
            ->addColumn('username', function ($members) {
                return '<a class="user-view-button" role="button" tabindex="0" data-id="' . $members->user->id . '">' . $members->user->name . '</a>';
            })

            ->addColumn('owner_from', function ($members) {
                return '<a class="user-view-button" role="button" tabindex="0" data-id="' . $members->country->id . '">' . $members->country->country . '</a>';
            })

            ->addColumn('type', function ($members) {
                return '<a class="user-view-button" role="button" tabindex="0" data-id="' . $members->type->id . '">' . $members->type->title . '</a>';
            })

            ->addColumn('action', function ($members) {
                $is_demo = '';
                if (!is_null(is_demo_admin())) {
                    $is_demo = 'disabled';
                }
                return '<button class="btn btn-danger btn-xs delete-button" data-id="' . $members->id . '"data-toggle="tooltip" data-original-title="Delete"' . $is_demo . '><i class="fa fa-trash"></i></button>';
            })
            ->addColumn('company_logo', function ($members) {
                if (!empty($members->company_logo)) {
                    return '<img src="' . get_member_image_url($members->company_logo) . '" width="60" class="img img-thumbnail img-responsive">';
                }
                return '<img src="' . get_member_image_url('no_image.jpg') . '" width="60" class="img img-thumbnail img-responsive">';
            })
            ->rawColumns(['username', 'owner_from', 'company_logo', 'type', 'number_of_worker',  'action'])
            ->setRowId('id')
            ->make(true);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'company' => 'required|max:250',
            // 'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:10240|dimensions:max_width=5000,max_height=3000',
        ], [
            'company.required' => 'Caption is required.',
            // 'image.dimensions' => 'Max dimensions 350x600',
        ]);

        if ($validator->passes()) {
            $member = Member::create([
                'user_id' => Auth::user()->id,
                'company' => $request->input('company'),
                'type_id' => $request->input('type'),
                'telephone' => $request->input('telephone'),
                'email' => $request->input('email'),
                'country_id' => $request->input('country'),
                'number_of_worker' => $request->input('number_of_worker'),
                'address' => $request->input('address'),
                'map' => $request->input('map'),
            ]);

            if (isset($request->products)) {
                $member->product()->sync($request->products, false);
            } else {
                $member->product()->sync(array());
            }

            if ($request->hasFile('member_image')) {
                $image = $request->file('member_image');
                $file_name = $this->image($member->id, $image);
                Member::find($member->id)->update(['company_logo' => $file_name]);
            }

            if (!empty($member->id)) {
                $request->session()->flash('message', 'Member add successfully.');
            } else {
                $request->session()->flash('exception', 'Operation failed !');
            }

            return redirect()->back()->with('message', 'Member add successfully.');
        }
        // return Response::json(['errors' => $validator->errors()]);
    }

    public function image($id, $image)
    {
        $filename = time() . '.jpg';
        $location = get_member_image_path($filename);
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

    public function show($id)
    {
        $member = Member::with(['user:id,name'])->where('id', $id)
            ->first();
        return json_encode($member);
    }

    public function update(Request $request, $id)
    {
        $member = Member::find($id);

        $validator = $validator = Validator::make($request->all(), [
            'url' => 'nullable|max:250',
            'title' => 'required|max:250',
            'publication_status' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:10240|dimensions:max_width=5000,max_height=3000',
        ], [
            'title.required' => 'Title is required.',
        ]);

        if ($validator->passes()) {
            $member->title = $request->get('title');
            $member->url = $request->get('url');
            $member->publication_status = $request->get('publication_status');

            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $file_name = $this->image($member->id, $image);
                $member->image = $file_name;
            }

            $affected_row = $member->save();

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
        $affected_row = Member::where('id', $id)
            ->update(['publication_status' => 1]);

        if (!empty($affected_row)) {
            return redirect()->back()->with('message', 'Published successfully.');
        }
        return redirect()->back()->with('exception', 'Operation failed !');
    }

    public function unpublished($id)
    {
        $affected_row = Member::where('id', $id)
            ->update(['publication_status' => 0]);

        if (!empty($affected_row)) {
            return redirect()->back()->with('message', 'Unpublished successfully.');
        }
        return redirect()->back()->with('exception', 'Operation failed !');
    }

    public function destroy($id)
    {
        $member = Member::find($id);
        if ($member) {
            if ($member->image) {
                @unlink(get_member_image_path($member->image));
            }
            $member->delete();
            return redirect()->back()->with('message', 'Member delete successfully.');
        } else {
            return redirect()->back()->with('exception', 'Member not found !');
        }
    }
}
