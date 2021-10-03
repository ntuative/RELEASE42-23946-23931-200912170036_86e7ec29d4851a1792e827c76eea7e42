package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_113:int = 0;
      
      public static const const_111:int = 1;
      
      public static const const_92:int = 2;
      
      public static const const_645:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1153:int = 0;
      
      private var var_1904:String = "";
      
      private var var_205:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_205 = param2;
         var_1153 = param3;
         var_1904 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1904;
      }
      
      public function get chatType() : int
      {
         return var_1153;
      }
      
      public function get text() : String
      {
         return var_205;
      }
   }
}
