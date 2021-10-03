package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1593:int = 0;
      
      private var var_1594:int = 0;
      
      private var var_1595:int = 0;
      
      private var var_1596:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1594;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1594 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1593 = param1;
      }
      
      public function get credits() : int
      {
         return var_1595;
      }
      
      public function get clubDays() : int
      {
         return var_1593;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1596 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1595 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1596;
      }
   }
}
