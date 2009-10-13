class com.bomberstudios.utils.MovieClipUtils {
  static function center_on_stage(mc:MovieClip){
    mc._x = Math.floor(Stage.width / 2 - mc._width / 2);
    mc._y = Math.floor(Stage.height / 2 - mc._height / 2);
  }
}