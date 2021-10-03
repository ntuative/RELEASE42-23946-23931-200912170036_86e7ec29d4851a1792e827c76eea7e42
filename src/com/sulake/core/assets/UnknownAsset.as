package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1076:AssetTypeDeclaration;
      
      private var var_869:String;
      
      private var var_34:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1076 = param1;
         var_869 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1076;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_34 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_34 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_34;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_34 = null;
            var_1076 = null;
            var_869 = null;
         }
      }
      
      public function get url() : String
      {
         return var_869;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_34;
      }
   }
}
