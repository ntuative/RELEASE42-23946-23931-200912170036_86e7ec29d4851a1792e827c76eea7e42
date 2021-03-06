package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_361:int = 0;
      
      public static const const_123:int = 2;
      
      public static const const_155:int = 1;
      
      public static const const_554:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1869:int;
      
      private var var_1868:int;
      
      private var var_1635:Array;
      
      private var var_1637:Boolean;
      
      private var var_1630:Boolean;
      
      private var var_1119:String;
      
      private var var_1632:Boolean;
      
      private var var_1633:int;
      
      private var var_1636:int;
      
      private var var_1071:int;
      
      private var var_1634:Boolean;
      
      private var _roomId:int;
      
      private var var_1631:Boolean;
      
      private var var_582:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1633;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1633 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1630;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1631;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1869 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1635 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_582 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1637;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1868;
      }
      
      public function get categoryId() : int
      {
         return var_1071;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1630 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1631 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1634 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1632 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1869;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1635;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1634;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1632;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1636 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1637 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1868 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1636;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1071 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1119 = param1;
      }
      
      public function get description() : String
      {
         return var_1119;
      }
   }
}
