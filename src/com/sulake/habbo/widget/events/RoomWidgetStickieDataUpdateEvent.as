package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_680:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_205:String;
      
      private var var_669:String;
      
      private var var_1423:String;
      
      private var var_162:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_162 = param2;
         var_1423 = param3;
         var_205 = param4;
         var_669 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1423;
      }
      
      public function get colorHex() : String
      {
         return var_669;
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
