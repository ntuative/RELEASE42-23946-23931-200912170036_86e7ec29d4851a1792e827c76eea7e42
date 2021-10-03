package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_562:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1582:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_562);
         var_1582 = param1;
      }
      
      public function get tag() : String
      {
         return var_1582;
      }
   }
}
