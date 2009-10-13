//
//  BSButton
//
//  Created by Ale Muñoz on 2009-10-13.
//  Copyright (c) 2009 Bomber Studios. All rights reserved.
//
import com.bomberstudios.utils.Delegate;

class com.bomberstudios.ui.BSButton {
  var mc:MovieClip;
  var id:String;

  function BSButton($mc:MovieClip,$id:String){
    mc = $mc;
    id = $id;
    create_ui();
    setup_actions();
  }

  function set_on_release(f:Function){
    mc.onRelease = f;
  }
  private function create_ui(){
    mc.createEmptyMovieClip('bg',1);
    show_normal_state();
  }
  private function setup_actions(){
    mc.onRollOver = Delegate.create(this,on_roll_over);
    mc.onRollOut  = Delegate.create(this,on_roll_out);
  }
  private function on_roll_over(){
    show_over_state();
  }
  private function on_roll_out(){
    show_normal_state();
  }
  private function show_over_state(){
    mc.bg.attachMovie('btn_' + id + '_over','img',1);
  }
  private function show_normal_state(){
    mc.bg.attachMovie('btn_' + id,'img',1);
  }
}