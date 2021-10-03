package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1619:Array;
      
      private var var_1620:String;
      
      private var var_1621:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1620 = param1;
         var_1619 = param2;
         var_1621 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1620;
      }
      
      public function get yieldList() : Array
      {
         return var_1619;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1621;
      }
   }
}
