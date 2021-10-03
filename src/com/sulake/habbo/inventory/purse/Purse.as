package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1638:Boolean = false;
      
      private var var_1640:int = 0;
      
      private var var_1593:int = 0;
      
      private var var_1639:int = 0;
      
      private var var_1430:int = 0;
      
      private var var_1596:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1430 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1640;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1638;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1638 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1640 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1593 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1430;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1639 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1593;
      }
      
      public function get pixelBalance() : int
      {
         return var_1639;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1596 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1596;
      }
   }
}
