package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1650:int;
      
      private var var_988:int;
      
      private var var_1651:int;
      
      private var var_1647:int;
      
      private var var_1648:int;
      
      private var var_1419:int;
      
      private var var_1649:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1650;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_988;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1647;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1648;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1419;
      }
      
      public function get commission() : int
      {
         return var_1651;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1649;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1649 = param1.readBoolean();
         var_1651 = param1.readInteger();
         var_988 = param1.readInteger();
         var_1419 = param1.readInteger();
         var_1647 = param1.readInteger();
         var_1650 = param1.readInteger();
         var_1648 = param1.readInteger();
         return true;
      }
   }
}
