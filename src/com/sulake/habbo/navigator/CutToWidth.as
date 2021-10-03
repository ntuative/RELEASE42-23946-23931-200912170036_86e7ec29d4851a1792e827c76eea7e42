package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_378:int;
      
      private var var_175:String;
      
      private var var_205:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_175 = param1;
         var_205 = param2;
         var_378 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_205.text = var_175.substring(0,param1) + "...";
         return var_205.textWidth > var_378;
      }
   }
}
