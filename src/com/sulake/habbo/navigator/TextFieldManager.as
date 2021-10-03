package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2217:Boolean;
      
      private var var_1375:int;
      
      private var var_2219:String = "";
      
      private var var_76:ITextFieldWindow;
      
      private var var_2218:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1225:String = "";
      
      private var var_156:IWindowContainer;
      
      private var var_295:Boolean;
      
      private var var_1150:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_76 = param2;
         var_1375 = param3;
         var_1150 = param4;
         if(param5 != null)
         {
            var_295 = true;
            var_1225 = param5;
            var_76.text = param5;
         }
         Util.setProcDirectly(var_76,onInputClick);
         var_76.addEventListener(WindowKeyboardEvent.const_120,checkEnterPress);
         var_76.addEventListener(WindowEvent.const_194,checkMaxLen);
         this.var_2217 = var_76.textBackground;
         this._orgTextBackgroundColor = var_76.textBackgroundColor;
         this.var_2218 = var_76.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1150 != null)
            {
               var_1150();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1225 != null)
         {
            var_76.text = var_1225;
            var_295 = true;
         }
         else
         {
            var_76.text = "";
            var_295 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_76;
      }
      
      public function restoreBackground() : void
      {
         var_76.textBackground = this.var_2217;
         var_76.textBackgroundColor = this._orgTextBackgroundColor;
         var_76.textColor = this.var_2218;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_310)
         {
            return;
         }
         if(!var_295)
         {
            return;
         }
         var_76.text = var_2219;
         var_295 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_156 != null)
         {
            var_156.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_76.textBackground = true;
         var_76.textBackgroundColor = 4294021019;
         var_76.textColor = 4278190080;
         if(this.var_156 == null)
         {
            this.var_156 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_156,"popup_arrow_down",true,null,0);
            IWindowContainer(var_76.parent).addChild(this.var_156);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_156.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_156.findChildByName("border").width = _loc2_.width + 15;
         var_156.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_76.getLocalPosition(_loc3_);
         this.var_156.x = _loc3_.x;
         this.var_156.y = _loc3_.y - this.var_156.height + 3;
         var _loc4_:IWindow = var_156.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_156.width / 2 - _loc4_.width / 2;
         var_156.x += (0 - 0) / 2;
         this.var_156.visible = true;
      }
      
      public function getText() : String
      {
         if(var_295)
         {
            return var_2219;
         }
         return var_76.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_295 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_295 = false;
         var_76.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1375)
         {
            var_76.text = _loc2_.substring(0,var_1375);
         }
      }
   }
}
