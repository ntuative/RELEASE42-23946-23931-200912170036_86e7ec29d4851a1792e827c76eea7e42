package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_948:Boolean;
      
      private var _name:String;
      
      private var var_2150:String;
      
      private var var_947:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2150 = String(param1.@link);
         var_947 = Boolean(parseInt(param1.@fliph));
         var_948 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_947;
      }
      
      public function get flipV() : Boolean
      {
         return var_948;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2150;
      }
   }
}
