package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_647:IAssetLoader;
      
      private var var_1288:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1288 = param1;
         var_647 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_647;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_647 != null)
            {
               if(true)
               {
                  var_647.dispose();
                  var_647 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1288;
      }
   }
}
