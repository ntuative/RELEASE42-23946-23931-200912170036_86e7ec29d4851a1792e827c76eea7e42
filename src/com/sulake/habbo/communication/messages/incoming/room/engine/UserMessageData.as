package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1220:String = "F";
      
      public static const const_842:String = "M";
       
      
      private var var_91:Number = 0;
      
      private var var_525:String = "";
      
      private var var_1623:int = 0;
      
      private var var_1625:String = "";
      
      private var var_1626:int = 0;
      
      private var var_1628:int = 0;
      
      private var var_1624:String = "";
      
      private var var_1104:String = "";
      
      private var _id:int = 0;
      
      private var var_189:Boolean = false;
      
      private var var_226:int = 0;
      
      private var var_1629:String = "";
      
      private var _name:String = "";
      
      private var var_1627:int = 0;
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_226;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_189)
         {
            var_226 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_189)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1623;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_189)
         {
            var_1626 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1629;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_189)
         {
            var_1624 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_189)
         {
            var_1629 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_189)
         {
            var_1628 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_189)
         {
            var_525 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_189)
         {
            var_1623 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_189)
         {
            var_1104 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1626;
      }
      
      public function get groupID() : String
      {
         return var_1624;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_189)
         {
            var_1627 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_189)
         {
            var_1625 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function get sex() : String
      {
         return var_1104;
      }
      
      public function get figure() : String
      {
         return var_525;
      }
      
      public function get webID() : int
      {
         return var_1627;
      }
      
      public function get custom() : String
      {
         return var_1625;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_189)
         {
            var_91 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1628;
      }
   }
}
