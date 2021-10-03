package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_923:Boolean;
      
      private var var_1092:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_923 = param1.readInteger() > 0;
         var_1092 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_923;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1092;
      }
      
      public function flush() : Boolean
      {
         var_923 = false;
         var_1092 = false;
         return true;
      }
   }
}
