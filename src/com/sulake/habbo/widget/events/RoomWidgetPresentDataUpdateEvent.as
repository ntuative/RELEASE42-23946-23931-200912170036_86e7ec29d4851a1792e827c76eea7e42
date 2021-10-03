package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_424:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_465:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_73:String = "RWPDUE_CONTENTS";
      
      public static const const_439:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_392:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_56:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_205:String;
      
      private var var_1672:BitmapData;
      
      private var var_162:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_162 = param2;
         var_205 = param3;
         _controller = param4;
         var_1672 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1672;
      }
      
      public function get text() : String
      {
         return var_205;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
