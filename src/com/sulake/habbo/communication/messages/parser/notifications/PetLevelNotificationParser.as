package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_525:String;
      
      private var var_1601:int;
      
      private var var_1861:String;
      
      private var var_931:int;
      
      private var var_1068:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1068;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1068 = param1.readInteger();
         var_1861 = param1.readString();
         var_1601 = param1.readInteger();
         var_525 = param1.readString();
         var_931 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1861;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_525;
      }
      
      public function get petType() : int
      {
         return var_931;
      }
      
      public function get level() : int
      {
         return var_1601;
      }
   }
}
