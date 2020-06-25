<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;
use App\Http\Resources\Blog as BlogResource;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{   

    public function index(Request $request)
    {   
        $sortBy = explode('-', $request->get('sortBy'));

        $sortBy[0] = ($sortBy[0]) ? $sortBy[0] : 1;

        $query = Blog::query();

        //return response()->json($sortBy[0]);

        switch($sortBy[0]){

            case 'date':
            $query = $query->orderBy('created_at', $sortBy[1]);
            break;

            case 'title':
            $query = $query->orderBy('title', $sortBy[1]);
            break;

            default:
            $query = $query->orderBy('created_at', 'desc');
             break;       
         }

         $query = $query->where('is_deleted', '=', 0);
         $blogs = $query->paginate(5);
        return BlogResource::collection($blogs);
    }

    public function store(Request $request)
    {   
        $blog = new Blog;

        if($request->isMethod('put')){

            $blog = Blog::findOrFail($request->get('blog_id'));
            $filepath = $blog->filepath;
        }
        
       // $file = ($request->hasFile('file')) ? $request->file('file') : null;
        
       if($request->hasFile('file')){

            $path = public_path('uploads');
            $file = $request->file('file');
            $filename = $file->getClientOriginalName();

            $file->move($path, $filename);
            $filepath = './uploads/'.$filename;
       }

        //return response()->json($data);
        $blog->id = $request->get('blog_id');
        $blog->title = $request->get('title');
        $blog->body = $request->get('body');
        $blog->filepath = $filepath ;

        if($blog->save()){

            return response()->json($blog);
            //return new BlogResource($blog);
        }
    }

    public function show($id)
    {
        $blog = Blog::findOrFail($id);

        return new BlogResource($blog);
    }

    public function destroy($id)
    {
        
        $blog = Blog::findOrFail($id);

        $blog->is_deleted = 1;
        
        if($blog->save()){

            return new BlogResource($blog);
        }
    }

    public function filter(Request $request){

        $search = $request->get('search');

        //return response()->json(json_encode($search));
        $blogs = Blog::where('title', 'like', '%' .$search.'%')
            ->orWhere('body', 'like', '%'.$search.'%')
            ->where('is_deleted', '=', 0)
            ->orderBy('created_at','desc')
            ->paginate(5);

        return BlogResource::collection($blogs);
    }

    public function show_deleted(){

        $blogs = Blog::orderBy('created_at', 'desc')
        ->where('is_deleted', '=', 1)
        ->paginate(5);
        //return response()->json($blogs);
        return BlogResource::collection($blogs);
    }

    public function restore_blog($id){

        $blog = Blog::findOrFail($id);
        $blog->is_deleted = 0;

        if($blog->save()){

            return new BlogResource($blog);
        }
    }
}
