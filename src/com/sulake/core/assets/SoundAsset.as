package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var var_34:Sound = null;
      
      private var _disposed:Boolean = false;
      
      private var var_1076:AssetTypeDeclaration;
      
      private var var_869:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1076 = param1;
         var_869 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1076;
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
         return var_869;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(var_34)
            {
               var_34.close();
            }
            var_34 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(var_34)
            {
               var_34.close();
            }
            var_34 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(var_34)
            {
               var_34.close();
            }
            var_34 = SoundAsset(param1).var_34;
            return;
         }
      }
      
      public function get content() : Object
      {
         return var_34 as Object;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            var_34 = SoundAsset(param1).var_34;
         }
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
   }
}
