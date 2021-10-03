package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1656:Boolean;
      
      private var var_1657:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1656 = Boolean(parseInt(param1.@club));
         var_1657 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1656;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1657;
      }
   }
}
