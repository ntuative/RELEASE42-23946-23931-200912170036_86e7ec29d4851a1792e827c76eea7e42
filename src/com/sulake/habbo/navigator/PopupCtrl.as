package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class PopupCtrl
   {
       
      
      private var var_782:Timer;
      
      private var _navigator:HabboNavigator;
      
      private var var_1124:String;
      
      private var var_1866:int;
      
      private var var_1865:int;
      
      private var var_651:Timer;
      
      private var var_57:IWindowContainer;
      
      public function PopupCtrl(param1:HabboNavigator, param2:int, param3:int, param4:String)
      {
         var_782 = new Timer(500,1);
         var_651 = new Timer(100,1);
         super();
         _navigator = param1;
         var_1124 = param4;
         var_1865 = param2;
         var_1866 = param3;
         var_782.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_651.addEventListener(TimerEvent.TIMER,onHideTimer);
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         if(var_57 != null)
         {
            var_57.visible = false;
         }
      }
      
      public function hideInstantly() : void
      {
         if(var_57 != null)
         {
            var_57.visible = false;
         }
         this.var_782.reset();
         this.var_651.reset();
      }
      
      private function onPopup(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 as WindowMouseEvent == null)
         {
            return;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.var_651.reset();
         }
         else if(param1.type == WindowMouseEvent.const_28)
         {
            if(!Util.containsMouse(var_57))
            {
               this.closePopup();
            }
         }
      }
      
      public function closePopup() : void
      {
         var_651.reset();
         var_782.reset();
         var_651.start();
      }
      
      public function get navigator() : HabboNavigator
      {
         return _navigator;
      }
      
      public function refreshContent(param1:IWindowContainer) : void
      {
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.var_57.visible = true;
         this.var_57.activate();
      }
      
      public function showPopup(param1:IWindow) : void
      {
         if(var_57 == null)
         {
            var_57 = IWindowContainer(_navigator.getXmlWindow(var_1124));
            var_57.visible = false;
            var_57.setParamFlag(HabboWindowParam.const_36,true);
            var_57.procedure = onPopup;
         }
         Util.hideChildren(var_57);
         refreshContent(var_57);
         var_57.height = Util.getLowestPoint(var_57) + 5;
         var _loc2_:Point = new Point();
         param1.getGlobalPosition(_loc2_);
         var_57.x = _loc2_.x + var_1865 + param1.width;
         var_57.y = _loc2_.y - 0 + param1.height * 0.5;
         var _loc3_:Point = new Point();
         var_57.getGlobalPosition(_loc3_);
         if(_loc3_.x + var_57.width > var_57.desktop.width)
         {
            var_57.x = 0 + _loc2_.x + var_1866;
            refreshPopupArrows(var_57,false);
         }
         else
         {
            refreshPopupArrows(var_57,true);
         }
         if(true)
         {
            var_782.reset();
            var_782.start();
         }
         var_651.reset();
         var_57.activate();
      }
      
      public function get visible() : Boolean
      {
         return this.var_57 != null && this.var_57.visible;
      }
      
      private function refreshPopupArrow(param1:IWindowContainer, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:String = "popup_arrow_" + (!!param2 ? "left" : "right");
         var _loc5_:IBitmapWrapperWindow = IBitmapWrapperWindow(param1.findChildByName(_loc4_));
         if(!param3)
         {
            if(_loc5_ != null)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            if(_loc5_ == null)
            {
               _loc5_ = _navigator.getButton(_loc4_,_loc4_,null);
               _loc5_.setParamFlag(HabboWindowParam.const_63,false);
               param1.addChild(_loc5_);
            }
            _loc5_.visible = true;
            _loc5_.y = param1.height * 0.5 - _loc5_.height * 0.5;
            _loc5_.x = !!param2 ? int(1 - _loc5_.width) : int(param1.width - 1);
         }
      }
      
      private function refreshPopupArrows(param1:IWindowContainer, param2:Boolean) : void
      {
         refreshPopupArrow(param1,true,param2);
         refreshPopupArrow(param1,false,!param2);
      }
   }
}
