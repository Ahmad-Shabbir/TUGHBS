<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Team;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Carbon\Carbon;
use App\Models\BookArea;

class TeamController extends Controller
{
    public function AllTeam(){
        $team = Team::latest()->get();
        return view('backend.team.all_team',compact('team'));
    } // End Method

    public function AddTeam(){
        return view('backend.team.add_team');
    } // End Method 

    
    public function StoreTeam(Request $request){

        if($request->file('image')){
            $manager = new ImageManager(new Driver());
            $name_gen = hexdec(uniqid()).'.'.$request->file('image')->getClientOriginalExtension();
            $img=$manager->read($request->file('image'));
            $img=$img->resize(550,670);

            $img->toJpeg(80)->save(base_path('public/upload/team/'.$name_gen));
            $save_url='upload/team/'.$name_gen;

            Team::insert([

                'name' => $request->name,
                'postion' => $request->postion,
                'facebook' => $request->facebook,
                'image' => $save_url,
                'created_at' => Carbon::now(),
            ]);

             }

        

        $notification = array(
            'message' => 'Team Data Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.team')->with($notification);

    } // End Method 



        public function EditTeam($id){

            $team = Team::findOrFail($id);
            return view('backend.team.edit_team',compact('team'));
    
        }// End Method 

     public function UpdateTeam(Request $request){

        $team_id = $request->id;

        if($request->file('image')){
            $manager = new ImageManager(new Driver());
            $name_gen = hexdec(uniqid()).'.'.$request->file('image')->getClientOriginalExtension();
            $img=$manager->read($request->file('image'));
            $img=$img->resize(550,670);

            $img->toJpeg(80)->save(base_path('public/upload/team/'.$name_gen));
            $save_url='upload/team/'.$name_gen;

            Team::findOrFail($team_id)->update([

                'name' => $request->name,
                'postion' => $request->postion,
                'facebook' => $request->facebook,
                'image' => $save_url,
                'created_at' => Carbon::now(),
            ]);

             

        

        $notification = array(
            'message' => 'Team Updated with  Image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.team')->with($notification);

    }
    else {

        Team::findOrFail($team_id)->update([

            'name' => $request->name,
            'postion' => $request->postion,
            'facebook' => $request->facebook, 
            'created_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Team Updated Without Image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.team')->with($notification);

    } // End Eles 



     }//end method

     public function DeleteTeam($id){

        $item = Team::findOrFail($id);
        $img = $item->image;
        unlink($img);

        Team::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Team Image Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);


     }   // End Method 

     //  ==================== Book Area All Methods =============

    public function BookArea(){

        $book = BookArea::find(1);
        return view('backend.bookarea.book_area',compact('book'));

    }  // End Method 



    public function BookAreaUpdate(Request $request){

        $book_id = $request->id;
        if($request->file('image')){
            $manager = new ImageManager(new Driver());
            $name_gen = hexdec(uniqid()).'.'.$request->file('image')->getClientOriginalExtension();
            $img=$manager->read($request->file('image'));
            $img=$img->resize(1000,1000);

            $img->toJpeg(80)->save(base_path('public/upload/bookarea/'.$name_gen));
            $save_url='upload/bookarea/'.$name_gen;

            BookArea::findOrFail($book_id)->update([

                'short_title' => $request->short_title,
                'main_title' => $request->main_title,
                'short_desc' => $request->short_desc,
                'link_url' => $request->link_url,
                'image' => $save_url, 
                
            ]);

             

        

        $notification = array(
            'message' => 'Book Area Updated With Image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }
    else {

        BookArea::findOrFail($book_id)->update([

            'short_title' => $request->short_title,
            'main_title' => $request->main_title,
            'short_desc' => $request->short_desc,
            'link_url' => $request->link_url,  
            
        ]);

        $notification = array(
            'message' => 'Book Area Updated Without Image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Eles 



     }//end method




    
}
