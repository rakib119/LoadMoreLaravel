<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function post(Request $request)
    {
        $posts = Post::paginate(8);

        if ($request->ajax()) {
            $html = '';

            foreach ($posts as $post) {
                $html .= '<div class="mt-5"><h1>' . $post->title . '</h1><p>' . $post->body . '</p></div>';
            }

            return $html;
        }

        return view('post');
    }
}
