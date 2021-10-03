package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1082:int;
      
      private var var_1083:int;
      
      private var var_1084:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1082;
      }
      
      public function flush() : Boolean
      {
         var_1083 = 0;
         var_1082 = 0;
         var_1084 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1083;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1082 = param1.readInteger();
         var_1083 = param1.readInteger();
         var_1084 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1084;
      }
   }
}
