package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1429:int = 2;
      
      public static const const_305:int = 4;
      
      public static const const_1342:int = 1;
      
      public static const const_1137:int = 3;
       
      
      private var var_968:int = 0;
      
      private var var_787:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_968;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_968 = param1.readInteger();
         if(var_968 == 3)
         {
            var_787 = param1.readString();
         }
         else
         {
            var_787 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_968 = 0;
         var_787 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_787;
      }
   }
}
