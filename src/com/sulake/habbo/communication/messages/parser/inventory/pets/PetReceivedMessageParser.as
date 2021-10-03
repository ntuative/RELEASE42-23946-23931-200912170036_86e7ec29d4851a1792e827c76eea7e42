package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_909:PetData;
      
      private var var_1328:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1328 = param1.readBoolean();
         var_909 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1328 + ", " + var_909.id + ", " + var_909.name + ", " + pet.figure + ", " + var_909.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1328;
      }
      
      public function get pet() : PetData
      {
         return var_909;
      }
   }
}
