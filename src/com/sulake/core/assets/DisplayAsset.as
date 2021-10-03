package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_34:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_869:String;
      
      protected var var_417:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_417 = param1;
         var_869 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_417;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            var_34 = DisplayAsset(param1).var_34;
            var_417 = DisplayAsset(param1).var_417;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function get url() : String
      {
         return var_869;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            var_34 = param1 as DisplayObject;
            if(var_34 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            var_34 = DisplayAsset(param1).var_34;
            var_417 = DisplayAsset(param1).var_417;
            if(var_34 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function get content() : Object
      {
         return var_34;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(false)
            {
               if(var_34.loaderInfo.loader != null)
               {
                  var_34.loaderInfo.loader.unload();
               }
            }
            var_34 = null;
            var_417 = null;
            _disposed = true;
            var_869 = null;
         }
      }
   }
}
