package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_625:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_981:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_625);
         var_981 = param1;
      }
      
      public function get groupId() : int
      {
         return var_981;
      }
   }
}
