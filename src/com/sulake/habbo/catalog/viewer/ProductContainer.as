package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.display.BitmapData;
   
   public class ProductContainer extends ProductGridItem implements IGetImageListener, IProductContainer, IGridItem
   {
       
      
      private var var_855:Array;
      
      private var var_422:int;
      
      protected var var_172:Offer;
      
      public function ProductContainer(param1:Offer, param2:Array)
      {
         super();
         var_172 = param1;
         var_855 = param2;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         super.dispose();
         for each(_loc1_ in var_855)
         {
            _loc1_.dispose();
         }
         var_855 = null;
         var_422 = 0;
      }
      
      public function get products() : Array
      {
         return var_855;
      }
      
      public function method_2(param1:IRoomEngine) : void
      {
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         setIconImage(param2);
      }
      
      public function get firstProduct() : IProduct
      {
         return var_855[0] as IProduct;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_422 = param1;
      }
      
      public function get iconCallbackId() : int
      {
         return var_422;
      }
      
      public function get offer() : Offer
      {
         return var_172;
      }
   }
}
