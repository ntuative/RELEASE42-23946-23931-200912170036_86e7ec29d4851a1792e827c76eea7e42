package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2111:String;
      
      private var _gender:String;
      
      private var var_1790:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1790 = param1.readInteger();
         var_2111 = param1.readString();
         _gender = param1.readString();
      }
      
      public function get gender() : String
      {
         return _gender;
      }
      
      public function get figureString() : String
      {
         return var_2111;
      }
      
      public function get slotId() : int
      {
         return var_1790;
      }
   }
}
