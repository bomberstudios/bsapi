import flash.filters.BlurFilter;

class com.bomberstudios.fx.Blur {
  static function create(mc:MovieClip){
    var blur:BlurFilter = new BlurFilter();
    blur.blurX = blur.blurY = 2;
    blur.quality = 3;
    var filters:Array = mc.filters;
    filters.push(blur);
    mc.filters = filters;
  }
}