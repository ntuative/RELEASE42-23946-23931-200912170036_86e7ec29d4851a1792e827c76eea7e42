package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_693:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_662:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_238:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1355:Point;
      
      private var var_1356:Rectangle;
      
      private var var_192:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1356 = param2;
         var_1355 = param3;
         var_192 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1356 != null)
         {
            return var_1356.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_192;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1355 != null)
         {
            return var_1355.clone();
         }
         return null;
      }
   }
}
