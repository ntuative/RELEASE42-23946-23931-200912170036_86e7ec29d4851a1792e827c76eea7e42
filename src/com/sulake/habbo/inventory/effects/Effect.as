package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1695:Date;
      
      private var var_1099:Boolean = false;
      
      private var _type:int;
      
      private var var_356:BitmapData;
      
      private var var_265:Boolean = false;
      
      private var var_1131:int;
      
      private var var_519:int = 1;
      
      private var var_916:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_356;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_519;
         if(var_519 < 0)
         {
            var_519 = 0;
         }
         var_916 = var_1131;
         var_265 = false;
         var_1099 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_916 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_265;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_356 = param1;
      }
      
      public function get duration() : int
      {
         return var_1131;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1099;
      }
      
      public function get effectsInInventory() : int
      {
         return var_519;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_356;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_265)
         {
            var_1695 = new Date();
         }
         var_265 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_519 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_265)
         {
            _loc1_ = var_916 - (new Date().valueOf() - var_1695.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_916;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1099 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1131 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
