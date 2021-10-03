package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PurchaseNotAllowedMessageParser implements IMessageParser
   {
       
      
      private var var_1083:int = 0;
      
      public function PurchaseNotAllowedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1083 = 0;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1083;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1083 = param1.readInteger();
         return true;
      }
   }
}
