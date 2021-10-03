package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1015:Boolean;
      
      private var var_1014:Boolean;
      
      private var var_1013:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1015;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1014;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1013 = param1.readBoolean();
         var_1014 = param1.readBoolean();
         var_1015 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1013;
      }
      
      public function flush() : Boolean
      {
         var_1013 = false;
         var_1014 = false;
         var_1015 = false;
         return true;
      }
   }
}
