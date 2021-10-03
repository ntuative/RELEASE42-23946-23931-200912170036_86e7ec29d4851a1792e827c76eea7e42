package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1516:String;
      
      private var var_1570:int;
      
      private var var_1569:int;
      
      private var var_1568:int;
      
      private var var_1571:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1570 = param1.readInteger();
         var_1568 = param1.readInteger();
         var_1569 = param1.readInteger();
         var_1571 = param1.readString();
         var_1516 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1516;
      }
      
      public function get hour() : int
      {
         return var_1570;
      }
      
      public function get minute() : int
      {
         return var_1568;
      }
      
      public function get chatterName() : String
      {
         return var_1571;
      }
      
      public function get chatterId() : int
      {
         return var_1569;
      }
   }
}
