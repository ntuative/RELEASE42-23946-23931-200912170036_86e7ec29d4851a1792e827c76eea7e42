package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1793:int;
      
      private var var_1159:String;
      
      private var var_1796:int;
      
      private var var_1797:int;
      
      private var var_1794:int;
      
      private var var_1795:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1159;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1795;
      }
      
      public function get responseType() : int
      {
         return var_1797;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1796;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1159 = param1.readString();
         var_1796 = param1.readInteger();
         var_1793 = param1.readInteger();
         var_1794 = param1.readInteger();
         var_1797 = param1.readInteger();
         var_1795 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1793;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1794;
      }
   }
}
