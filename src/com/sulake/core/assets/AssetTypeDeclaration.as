package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2080:Class;
      
      private var var_2081:Class;
      
      private var var_2079:String;
      
      private var var_1247:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2079 = param1;
         var_2081 = param2;
         var_2080 = param3;
         if(rest == null)
         {
            var_1247 = new Array();
         }
         else
         {
            var_1247 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2080;
      }
      
      public function get assetClass() : Class
      {
         return var_2081;
      }
      
      public function get mimeType() : String
      {
         return var_2079;
      }
      
      public function get fileTypes() : Array
      {
         return var_1247;
      }
   }
}
