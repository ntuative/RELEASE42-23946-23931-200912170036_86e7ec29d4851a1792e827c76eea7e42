package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_438:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_652:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_669:String;
      
      private var var_162:int;
      
      private var var_205:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_162 = param2;
         var_205 = param3;
         var_669 = param4;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get text() : String
      {
         return var_205;
      }
      
      public function get colorHex() : String
      {
         return var_669;
      }
   }
}
