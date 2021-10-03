package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_150:int = 1;
      
      public static const const_1266:int = 3;
      
      public static const const_386:int = 2;
       
      
      private var var_1752:int;
      
      private var var_1748:int;
      
      private var var_1749:int;
      
      private var var_1755:int;
      
      private var _state:int;
      
      private var var_390:int;
      
      private var var_1262:int;
      
      private var var_1754:int;
      
      private var var_932:int;
      
      private var _roomResources:String;
      
      private var var_1751:int;
      
      private var var_1757:int;
      
      private var var_1753:String;
      
      private var var_1759:String;
      
      private var var_1750:int = 0;
      
      private var var_1122:String;
      
      private var _message:String;
      
      private var var_1550:int;
      
      private var var_1756:String;
      
      private var var_1071:int;
      
      private var var_612:String;
      
      private var var_1758:String;
      
      private var var_1319:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_932 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1750 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1757;
      }
      
      public function set roomName(param1:String) : void
      {
         var_612 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1751 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_612;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1755 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1748;
      }
      
      public function get priority() : int
      {
         return var_1752 + var_1750;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1754 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1759;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1319) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1071;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1757 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1262;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1753 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1751;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1755;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1758 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1122 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1754;
      }
      
      public function set priority(param1:int) : void
      {
         var_1752 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1748 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1753;
      }
      
      public function set method_4(param1:int) : void
      {
         var_1749 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1759 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1550 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1122;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1262 = param1;
      }
      
      public function get method_4() : int
      {
         return var_1749;
      }
      
      public function set flatId(param1:int) : void
      {
         var_390 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1071 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1319 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1550;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1756 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1319;
      }
      
      public function get reportedUserId() : int
      {
         return var_932;
      }
      
      public function get flatId() : int
      {
         return var_390;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1758;
      }
      
      public function get reporterUserName() : String
      {
         return var_1756;
      }
   }
}
