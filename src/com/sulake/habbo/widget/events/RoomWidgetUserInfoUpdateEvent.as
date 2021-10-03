package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_198:String = "RWUIUE_PEER";
      
      public static const const_186:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1136:String = "BOT";
      
      public static const const_785:int = 2;
      
      public static const const_1124:int = 0;
      
      public static const const_985:int = 3;
       
      
      private var var_1075:String = "";
      
      private var var_1661:Boolean = false;
      
      private var var_1628:int = 0;
      
      private var var_1529:int = 0;
      
      private var var_1664:Boolean = false;
      
      private var var_1074:String = "";
      
      private var var_1662:Boolean = false;
      
      private var var_736:int = 0;
      
      private var var_1666:Boolean = true;
      
      private var var_981:int = 0;
      
      private var var_1663:Boolean = false;
      
      private var var_1170:Boolean = false;
      
      private var var_1665:Boolean = false;
      
      private var var_1527:int = 0;
      
      private var var_1658:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_275:Array;
      
      private var var_1173:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1627:int = 0;
      
      private var var_1659:Boolean = false;
      
      private var var_1660:int = 0;
      
      private var var_1528:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_275 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1529;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1529 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1661;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1666;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1666 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function get motto() : String
      {
         return var_1075;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1663 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1170;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1075 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1659;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1528;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1170 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1658;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1527 = param1;
      }
      
      public function get badges() : Array
      {
         return var_275;
      }
      
      public function get amIController() : Boolean
      {
         return var_1664;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1664 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1659 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1528 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1074 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1662;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1663;
      }
      
      public function get carryItem() : int
      {
         return var_1527;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1173;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1173 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_736 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1660;
      }
      
      public function get realName() : String
      {
         return var_1074;
      }
      
      public function set webID(param1:int) : void
      {
         var_1627 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_275 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1665 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1658 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_736;
      }
      
      public function get webID() : int
      {
         return var_1627;
      }
      
      public function set groupId(param1:int) : void
      {
         var_981 = param1;
      }
      
      public function get xp() : int
      {
         return var_1628;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1661 = param1;
      }
      
      public function get groupId() : int
      {
         return var_981;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1665;
      }
      
      public function set xp(param1:int) : void
      {
         var_1628 = param1;
      }
   }
}
