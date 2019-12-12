<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Snippet;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
class SnippetsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return 'from cotroller movies index';
        // return view('movie.index');
        // return view('home.about');
    }

    public function about()
    {
        return 'from cotroller about new';
        // return view('home.about');
    }

     public function show($id)
    {
        $snippet = Snippet::find($id);
        if($snippet == null)
            // return Redirect::to('new snippet');
            return 'error';
        // dd($snippet);
        return view('snippets.show', $snippet);
        // return view('home.about');
    }

    public function fork($id){
        $snippet = Snippet::find($id);
        if(!$snippet)
        {
            return redirect()->route('new snippet');
        }
        return $this->new($snippet->snippet);
        return 'fork';
    }

    public function new($snippet = ''){
        // return 'create a new page';
        if($snippet = null)
            $snippet = '';
        return view('snippets.new')->with('snippet', $snippet);
    }

    public function create(){
        $snippet = Input::get('snippet');
        
        if($snippet == null)
        {
            return redirect()->route('new snippet');
        }
        else{
            $new_snippet = Snippet::create(array('snippet' => Input::get('snippet')));
            if( $new_snippet){
                return redirect()->route('snippet', [$new_snippet->id]);
            }

        }
        
        return 'created';
    }
}
