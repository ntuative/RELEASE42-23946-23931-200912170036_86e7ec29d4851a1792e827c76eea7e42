package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1786:int;
      
      private var var_1787:Boolean;
      
      private var var_1791:int;
      
      private var var_1785:String;
      
      private var var_1900:Boolean = false;
      
      private var var_1789:int;
      
      private var var_422:int;
      
      private var var_904:String;
      
      private var var_1790:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1078:int;
      
      private var var_1784:Boolean;
      
      private var var_1901:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1786 = param1;
         var_904 = param2;
         _objId = param3;
         var_1078 = param4;
         var_1785 = param5;
         var_1787 = param6;
         var_1784 = param7;
         var_1789 = param8;
         var_1790 = param9;
         var_1791 = param10;
         var_422 = -1;
      }
      
      public function get songId() : int
      {
         return var_1791;
      }
      
      public function get iconCallbackId() : int
      {
         return var_422;
      }
      
      public function get expiryTime() : int
      {
         return var_1789;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1901 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1900 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_422 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1784;
      }
      
      public function get slotId() : String
      {
         return var_1790;
      }
      
      public function get classId() : int
      {
         return var_1078;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1787;
      }
      
      public function get stuffData() : String
      {
         return var_1785;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1786;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1900;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1901;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_904;
      }
   }
}
