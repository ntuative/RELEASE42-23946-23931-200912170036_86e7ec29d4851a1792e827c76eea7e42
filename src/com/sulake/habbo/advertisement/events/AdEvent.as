package com.sulake.habbo.advertisement.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class AdEvent extends Event
   {
      
      public static const const_394:String = "AE_INTERSTITIAL_SHOW";
      
      public static const const_365:String = "AE_ROOM_AD_SHOW";
      
      public static const const_395:String = "AE_INTERSTITIAL_COMPLETE";
       
      
      private var var_1308:String;
      
      private var _roomCategory:int;
      
      private var var_1556:BitmapData;
      
      private var _roomId:int;
      
      private var var_1555:BitmapData;
      
      private var _image:BitmapData;
      
      public function AdEvent(param1:String, param2:int = 0, param3:int = 0, param4:BitmapData = null, param5:String = "", param6:BitmapData = null, param7:BitmapData = null, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param8,param9);
         _image = param4;
         _roomId = param2;
         _roomCategory = param3;
         var_1308 = param5;
         var_1556 = param6;
         var_1555 = param7;
      }
      
      public function get adWarningR() : BitmapData
      {
         return var_1555;
      }
      
      public function get clickUrl() : String
      {
         return var_1308;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get adWarningL() : BitmapData
      {
         return var_1556;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
