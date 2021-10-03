package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_525:String = "";
      
      private var var_1625:String = "";
      
      private var var_1626:int = 0;
      
      private var var_1628:int = 0;
      
      private var _type:int = 0;
      
      private var var_1624:String = "";
      
      private var var_1104:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1627:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1626 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1624 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_525 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1104 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1626;
      }
      
      public function set webID(param1:int) : void
      {
         var_1627 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1624;
      }
      
      public function set custom(param1:String) : void
      {
         var_1625 = param1;
      }
      
      public function get figure() : String
      {
         return var_525;
      }
      
      public function get sex() : String
      {
         return var_1104;
      }
      
      public function get custom() : String
      {
         return var_1625;
      }
      
      public function get webID() : int
      {
         return var_1627;
      }
      
      public function set xp(param1:int) : void
      {
         var_1628 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1628;
      }
   }
}
