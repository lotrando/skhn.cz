<?php

namespace App\Http\Controllers;

use App\Mail\PharmacyMail;
use App\Mail\UserPharmacyMail;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validData = Validator::make($request->all(), [
            'name'          => 'required|unique:posts|max:255',
            'email'         => 'required',
            'phone'         => 'required',
            'uid'           => 'required|unique:posts',
            'region_id'     => 'required',
            'message'       => 'nullable'
        ])->validate();

        Post::create($validData);

        $reservation = Post::with('region')->latest()->first();

        $data = [
            'name'          => $reservation->name,
            'email'         => $reservation->email,
            'phone'         => $reservation->phone,
            'uid'           => $reservation->uid,
            'region'        => $reservation->region->region_name,
            'message'       => $reservation->message,
        ];

        Mail::to('reznikova@khn.cz')->send(new PharmacyMail($data));

        Mail::to($reservation->email)->send(new UserPharmacyMail($data));

        return redirect()->back()->withErrors($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
