package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2010:int;
      
      private var var_2012:int;
      
      private var var_904:String;
      
      private var var_2014:int;
      
      private var var_2015:String;
      
      private var var_2013:int;
      
      private var var_2018:int;
      
      private var _category:int;
      
      private var var_2017:int;
      
      private var var_2019:int;
      
      private var var_2011:int;
      
      private var var_2016:Boolean;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:Boolean, param12:int)
      {
         super();
         var_2014 = param1;
         var_904 = param2;
         var_2012 = param3;
         var_2011 = param4;
         _category = param5;
         var_2015 = param6;
         var_2013 = param7;
         var_2010 = param8;
         var_2019 = param9;
         var_2018 = param10;
         var_2016 = param11;
         var_2017 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2011;
      }
      
      public function get groupable() : Boolean
      {
         return var_2016;
      }
      
      public function get creationMonth() : int
      {
         return var_2019;
      }
      
      public function get roomItemID() : int
      {
         return var_2012;
      }
      
      public function get itemType() : String
      {
         return var_904;
      }
      
      public function get itemID() : int
      {
         return var_2014;
      }
      
      public function get itemSpecificData() : String
      {
         return var_2015;
      }
      
      public function get songID() : int
      {
         return var_2017;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2013;
      }
      
      public function get creationYear() : int
      {
         return var_2018;
      }
      
      public function get creationDay() : int
      {
         return var_2010;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
