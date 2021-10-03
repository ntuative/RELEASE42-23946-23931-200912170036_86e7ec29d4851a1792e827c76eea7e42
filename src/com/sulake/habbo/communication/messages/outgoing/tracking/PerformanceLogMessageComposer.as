package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1001:int = 0;
      
      private var var_1112:int = 0;
      
      private var var_1732:String = "";
      
      private var var_1000:int = 0;
      
      private var var_1728:String = "";
      
      private var var_1731:int = 0;
      
      private var var_1457:String = "";
      
      private var var_1730:int = 0;
      
      private var var_1729:int = 0;
      
      private var var_1726:String = "";
      
      private var var_1727:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1730 = param1;
         var_1726 = param2;
         var_1457 = param3;
         var_1732 = param4;
         var_1728 = param5;
         if(param6)
         {
            var_1112 = 1;
         }
         else
         {
            var_1112 = 0;
         }
         var_1731 = param7;
         var_1729 = param8;
         var_1000 = param9;
         var_1727 = param10;
         var_1001 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1730,var_1726,var_1457,var_1732,var_1728,var_1112,var_1731,var_1729,var_1000,var_1727,var_1001];
      }
      
      public function dispose() : void
      {
      }
   }
}
