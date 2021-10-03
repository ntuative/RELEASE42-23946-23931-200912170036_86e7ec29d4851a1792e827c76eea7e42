package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1362:int = 10;
       
      
      private var var_1314:NavigatorSettingsMessageParser;
      
      private var var_1057:int;
      
      private var var_1564:Boolean;
      
      private var var_1561:int;
      
      private var var_711:Dictionary;
      
      private var var_2190:int;
      
      private var var_1562:int;
      
      private var var_1567:int;
      
      private var var_316:Array;
      
      private var var_1566:int;
      
      private var var_1059:Array;
      
      private var var_504:PublicRoomShortData;
      
      private var var_365:RoomEventData;
      
      private var var_124:MsgWithRequestId;
      
      private var var_1563:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1565:Boolean;
      
      private var var_187:GuestRoomData;
      
      private var var_596:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_316 = new Array();
         var_711 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1561;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1565;
      }
      
      public function startLoading() : void
      {
         this.var_596 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1565 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_365 != null)
         {
            var_365.dispose();
         }
         var_365 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_124 != null && var_124 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_124 != null && var_124 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_124 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_187;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_504 = null;
         var_187 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_504 = param1.publicSpace;
            var_365 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_365 != null)
         {
            var_365.dispose();
            var_365 = null;
         }
         if(var_504 != null)
         {
            var_504.dispose();
            var_504 = null;
         }
         if(var_187 != null)
         {
            var_187.dispose();
            var_187 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_124 = param1;
         var_596 = false;
         if(var_1059 == null)
         {
            var_1059 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1314;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_124 = param1;
         var_596 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_316.length > param1)
         {
            return var_316[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2190 = param1.limit;
         this.var_1057 = param1.favouriteRoomIds.length;
         this.var_711 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_711[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_124 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_316;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_504;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1567 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1564;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_124 = param1;
         var_596 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_316.length)
         {
            if((var_316[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_187 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_596;
      }
      
      public function set categories(param1:Array) : void
      {
         var_316 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1562;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1566;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1314 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_124 == null)
         {
            return;
         }
         var_124.dispose();
         var_124 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_365;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_711[param1] = !!param2 ? "yes" : null;
         var_1057 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_124 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1059;
      }
      
      public function get avatarId() : int
      {
         return var_1567;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_124 != null && var_124 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1564 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1562 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1563 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_187 != null)
         {
            var_187.dispose();
         }
         var_187 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_316)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_187 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1314.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1057 >= var_2190;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1566 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1563;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_187 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1561 = param1;
      }
   }
}
