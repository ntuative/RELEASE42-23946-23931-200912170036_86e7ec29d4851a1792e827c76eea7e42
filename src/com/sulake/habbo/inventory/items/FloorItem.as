package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_1292:String;
      
      protected var var_2169:Boolean;
      
      protected var var_2010:int;
      
      protected var var_2168:Boolean;
      
      protected var _type:int;
      
      protected var var_2018:int;
      
      protected var var_2167:Boolean;
      
      protected var var_1791:int;
      
      protected var var_2165:Boolean;
      
      protected var _id:int;
      
      protected var var_2166:int;
      
      protected var var_1790:String;
      
      protected var var_2016:Boolean;
      
      protected var _category:int;
      
      protected var var_2019:int;
      
      protected var var_2183:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:int, param11:int, param12:int, param13:int, param14:String, param15:int)
      {
         super();
         _id = param1;
         _type = param2;
         var_2166 = param3;
         _category = param4;
         var_2016 = param5;
         var_2165 = param6;
         var_2169 = param7;
         var_2168 = param8;
         var_1292 = param9;
         var_2183 = param10;
         var_2010 = param11;
         var_2019 = param12;
         var_2018 = param13;
         var_1790 = param14;
         var_1791 = param15;
      }
      
      public function get locked() : Boolean
      {
         return var_2167;
      }
      
      public function get songId() : int
      {
         return var_1791;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2167 = param1;
      }
      
      public function get ref() : int
      {
         return var_2166;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2168;
      }
      
      public function get slotId() : String
      {
         return var_1790;
      }
      
      public function get expires() : int
      {
         return var_2183;
      }
      
      public function get creationYear() : int
      {
         return var_2018;
      }
      
      public function get creationDay() : int
      {
         return var_2010;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2165;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get groupable() : Boolean
      {
         return var_2016;
      }
      
      public function get creationMonth() : int
      {
         return var_2019;
      }
      
      public function get extras() : String
      {
         return var_1292;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2169;
      }
   }
}
