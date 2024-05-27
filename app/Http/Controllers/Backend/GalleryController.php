<?php

namespace App\Http\Controllers\Backend;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Gallery;
use Intervention\Image\Facades\Image;
use Carbon\Carbon;
use Illuminate\Foundation\Http\FormRequest;
use App\Models\Contact;

class GalleryController extends Controller
{
    public function AllGallery(){

        $gallery = Gallery::latest()->get();
        return view('backend.gallery.all_gallery',compact('gallery'));

    } // End Method 

    public function AddGallery(){
        return view('backend.gallery.add_gallery');
    } // End Method 

    public function StoreGallery(Request $request){
    $images = $request->file('photo_name');

    foreach ($images as $img) {
        $manager = new ImageManager(new Driver());  // Assuming Driver is configured correctly

        $name_gen = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
        $img = $manager->read($img);  // Use $img from the loop

        $img->resize(550, 550);
        $img->toJpeg(80)->save(public_path('upload/gallery/' . $name_gen));
        $save_url = 'upload/gallery/' . $name_gen;

        Gallery::create([  // Use create() for mass insertion
            'photo_name' => $save_url,
            'created_at' => Carbon::now(),
        ]);
    }

    $notification = [
        'message' => 'Gallery Inserted Successfully',
        'alert-type' => 'success'
    ];

    return redirect()->route('all.gallery')->with($notification);
}


public function EditGallery($id){

    $gallery = Gallery::find($id);
    return view('backend.gallery.edit_gallery',compact('gallery'));

}// End Method 

    
public function UpdateGallery(Request $request){

    $gal_id = $request->id;
    $img = $request->file('photo_name');

    $manager = new ImageManager(new Driver());  // Assuming Driver is configured correctly

        $name_gen = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
        $img = $manager->read($img);  // Use $img from the loop

        $img->resize(550, 550);
        $img->toJpeg(80)->save(public_path('upload/gallery/' . $name_gen));
        $save_url = 'upload/gallery/' . $name_gen;

        Gallery::find($gal_id)->update([
            'photo_name' => $save_url, 
        ]); 

        $notification = array(
            'message' => 'Gallery Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.gallery')->with($notification);  

    }// End Method 
    
    
    public function DeleteGallery($id){

        $item = Gallery::findOrFail($id);
        $img = $item->photo_name;
        unlink($img);

        Gallery::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Gallery Image Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);


     }   // End Method 


     public function DeleteGalleryMultiple(Request $request){

        $selectedItems = $request->input('selectedItem', []);

        foreach ($selectedItems as $itemId) {
           $item = Gallery::find($itemId);
           $img = $item->photo_name;
           unlink($img);
           $item->delete();
        }

        $notification = array(
            'message' => 'Selected Image Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

     }// End Method 

     public function ShowGallery(){
        $gallery = Gallery::latest()->get();
        return view('frontend.gallery.show_gallery',compact('gallery'));
     }// End Method


     public function ContactUs(){

        return view('frontend.contact.contact_us');
     }// End Method



     public function StoreContactUs(Request $request){

        Contact::insert([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'subject' => $request->subject,
            'message' => $request->message,
            'created_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Your Message Send Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 

     }// End Method



     public function AdminContactMessage(){

        $contact = Contact::latest()->get();
        return view('backend.contact.contact_message',compact('contact'));

     }// End Method

}