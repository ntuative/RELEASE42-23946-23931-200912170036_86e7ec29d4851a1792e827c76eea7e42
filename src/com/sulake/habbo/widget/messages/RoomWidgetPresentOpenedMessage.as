package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1332:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1078:int;
      
      private var var_904:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_904 = param2;
         var_1078 = param3;
      }
      
      public function get classId() : int
      {
         return var_1078;
      }
      
      public function get itemType() : String
      {
         return var_904;
      }
   }
}
