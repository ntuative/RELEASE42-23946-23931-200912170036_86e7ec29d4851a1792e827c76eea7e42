package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1785:String;
      
      private var var_904:String;
      
      private var var_1792:Boolean;
      
      private var var_1786:int;
      
      private var var_1788:Boolean;
      
      private var var_1790:String = "";
      
      private var var_1787:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1078:int;
      
      private var var_1784:Boolean;
      
      private var var_1791:int = -1;
      
      private var var_1789:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1786 = param1;
         var_904 = param2;
         _objId = param3;
         var_1078 = param4;
         _category = param5;
         var_1785 = param6;
         var_1792 = param7;
         var_1787 = param8;
         var_1784 = param9;
         var_1788 = param10;
         var_1789 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1790;
      }
      
      public function get classId() : int
      {
         return var_1078;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1788;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1792;
      }
      
      public function get stripId() : int
      {
         return var_1786;
      }
      
      public function get stuffData() : String
      {
         return var_1785;
      }
      
      public function get songId() : int
      {
         return var_1791;
      }
      
      public function setSongData(param1:String, param2:int) : void
      {
         var_1790 = param1;
         var_1791 = param2;
      }
      
      public function get expiryTime() : int
      {
         return var_1789;
      }
      
      public function get itemType() : String
      {
         return var_904;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1784;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1787;
      }
   }
}
