package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1492:int;
      
      private var var_2068:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_2068 = param1.readString();
         var_1492 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1492;
      }
      
      public function get productItemType() : String
      {
         return var_2068;
      }
   }
}
