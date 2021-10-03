package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1913:XML;
      
      private var var_1400:ITextWindow;
      
      private var var_1401:ITextWindow;
      
      private var var_1910:XML;
      
      private var var_792:IWindowContainer;
      
      private var var_2229:ITextWindow;
      
      private var var_1911:String = "";
      
      private var var_2277:IButtonWindow;
      
      private var var_1912:XML;
      
      private var var_1399:ITextWindow;
      
      private var var_1909:XML;
      
      private var var_791:IButtonWindow;
      
      private var var_172:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_277:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1910) as IWindowContainer;
               break;
            case Offer.const_406:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1909) as IWindowContainer;
               break;
            case Offer.const_468:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1913) as IWindowContainer;
               break;
            case Offer.const_535:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1912) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_792 != null)
            {
               _window.removeChild(var_792);
               var_792.dispose();
            }
            var_792 = _loc2_;
            _window.addChild(_loc2_);
            var_792.x = 0;
            var_792.y = 0;
         }
         var_1399 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1401 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1400 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2229 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_791 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_791 != null)
         {
            var_791.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_791.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_172 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_172,page,var_1911);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1910 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1909 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1913 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1912 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_977,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1911 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_172 = param1.offer;
         attachStub(var_172.priceType);
         if(var_1399 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_172.priceInCredits));
            var_1399.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1401 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_172.priceInPixels));
            var_1401.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1400 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_172.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_172.priceInPixels));
            var_1400.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_791 != null)
         {
            var_791.enable();
         }
      }
   }
}
