package com.sulake.habbo.inventory.furni
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.inventory.items.GroupItem;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class FurniGridView
   {
       
      
      private var var_2287:XML;
      
      private var _view:IWindowContainer;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _roomEngine:IRoomEngine;
      
      private var _category:String;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_347:Object;
      
      private var var_482:IItemGridWindow;
      
      private var var_87:FurniModel;
      
      public function FurniGridView(param1:FurniModel, param2:String, param3:IHabboWindowManager, param4:IAssetLibrary, param5:IRoomEngine)
      {
         super();
         var_87 = param1;
         _category = param2;
         _assetLibrary = param4;
         _windowManager = param3;
         _roomEngine = param5;
         var _loc6_:IAsset = _assetLibrary.getAssetByName("inventory_furni_grid_xml");
         var _loc7_:XmlAsset = XmlAsset(_loc6_);
         var _loc8_:ICoreWindowManager = ICoreWindowManager(_windowManager);
         _view = IWindowContainer(_loc8_.buildFromXML(XML(_loc7_.content)));
         if(_view != null)
         {
            var_482 = _view.findChildByName("item_grid") as IItemGridWindow;
         }
      }
      
      public function updateItem(param1:int, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = var_482.getGridItemAt(param1);
         if(_loc3_)
         {
            _loc3_ = param2;
         }
      }
      
      public function initFromList() : void
      {
         var _loc3_:* = null;
         var _loc1_:Array = var_87.getCategoryContent(_category);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = _loc1_[_loc2_] as GroupItem;
            var_482.addGridItem(_loc3_.window);
            _loc2_++;
         }
      }
      
      public function addItemAt(param1:IWindowContainer, param2:int) : void
      {
         var_482.addGridItemAt(param1,param2);
         param1.procedure = itemEventProc;
      }
      
      public function get window() : IWindowContainer
      {
         if(_view == null)
         {
            return null;
         }
         if(false)
         {
            return null;
         }
         return _view;
      }
      
      public function clearGrid() : void
      {
         if(var_482 != null)
         {
            var_482.removeGridItems();
         }
      }
      
      public function removeItem(param1:int) : void
      {
         var_482.removeGridItemAt(param1);
      }
      
      public function addItemToBottom(param1:IWindowContainer) : void
      {
         var_482.addGridItem(param1);
         param1.procedure = itemEventProc;
      }
      
      private function itemEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:Boolean = false;
         if(param1.type == WindowMouseEvent.const_102)
         {
            var_347 = null;
            var_87.cancelFurniInMover();
         }
         else if(param1.type == WindowMouseEvent.const_55)
         {
            if(param2 == null)
            {
               return;
            }
            var_87.toggleItemSelection(_category,var_482.getGridItemIndex(param1.window));
            var_347 = param2;
         }
         else if(param1.type == WindowMouseEvent.const_28 && var_347 != null && var_347 == param2 && true)
         {
            _loc3_ = var_87.requestSelectedFurniPlacement(true);
            if(_loc3_)
            {
               var_347 = null;
            }
         }
         else if(param1.type == WindowMouseEvent.const_102)
         {
            var_347 == null;
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            var_347 == null;
         }
         else if(param1.type == WindowMouseEvent.const_266)
         {
            var_87.requestCurrentActionOnSelection();
            var_347 = null;
         }
      }
   }
}
