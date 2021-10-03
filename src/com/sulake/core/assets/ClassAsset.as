package com.sulake.core.assets
{
   public class ClassAsset implements IAsset
   {
       
      
      private var var_34:Class;
      
      private var _disposed:Boolean = false;
      
      private var var_1076:AssetTypeDeclaration;
      
      public function ClassAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1076 = param1;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get url() : String
      {
         return null;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Class)
         {
            var_34 = param1 as Class;
         }
      }
      
      public function get content() : Object
      {
         return var_34 as Object;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is ClassAsset)
         {
            var_34 = ClassAsset(param1).var_34;
            return;
         }
         throw new Error("Provided asset should be of type ClassAsset!");
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1076;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            var_1076 = null;
            var_34 = null;
            _disposed = true;
         }
      }
   }
}
