package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_860:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_860 = new Array();
         var_860.push(param1.length);
         var_860 = var_860.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_860;
      }
   }
}
