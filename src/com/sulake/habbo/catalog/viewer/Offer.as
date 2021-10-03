package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_883:String = "price_type_none";
      
      public static const const_353:String = "pricing_model_multi";
      
      public static const const_277:String = "price_type_credits";
      
      public static const const_468:String = "price_type_credits_and_pixels";
      
      public static const const_383:String = "pricing_model_bundle";
      
      public static const const_390:String = "pricing_model_single";
      
      public static const const_535:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1225:String = "pricing_model_unknown";
      
      public static const const_406:String = "price_type_pixels";
       
      
      private var var_715:int;
      
      private var _offerId:int;
      
      private var var_714:int;
      
      private var var_367:String;
      
      private var var_507:String;
      
      private var var_1589:int;
      
      private var var_592:ICatalogPage;
      
      private var var_1066:String;
      
      private var var_366:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1066 = param1.localizationId;
         var_715 = param1.priceInCredits;
         var_714 = param1.priceInPixels;
         var_592 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_367;
      }
      
      public function get page() : ICatalogPage
      {
         return var_592;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1589 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_366;
      }
      
      public function get localizationId() : String
      {
         return var_1066;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_714;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1066 = "";
         var_715 = 0;
         var_714 = 0;
         var_592 = null;
         if(var_366 != null)
         {
            var_366.dispose();
            var_366 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_507;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1589;
      }
      
      public function get priceInCredits() : int
      {
         return var_715;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_367 = const_390;
            }
            else
            {
               var_367 = const_353;
            }
         }
         else if(param1.length > 1)
         {
            var_367 = const_383;
         }
         else
         {
            var_367 = const_1225;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_367)
         {
            case const_390:
               var_366 = new SingleProductContainer(this,param1);
               break;
            case const_353:
               var_366 = new MultiProductContainer(this,param1);
               break;
            case const_383:
               var_366 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_367);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_715 > 0 && var_714 > 0)
         {
            var_507 = const_468;
         }
         else if(var_715 > 0)
         {
            var_507 = const_277;
         }
         else if(var_714 > 0)
         {
            var_507 = const_406;
         }
         else
         {
            var_507 = const_883;
         }
      }
   }
}
