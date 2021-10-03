package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1897:int;
      
      private var var_2124:String;
      
      private var var_2127:int;
      
      private var var_2126:int;
      
      private var var_672:Boolean;
      
      private var var_1630:Boolean;
      
      private var var_390:int;
      
      private var var_1119:String;
      
      private var var_1636:int;
      
      private var var_1071:int;
      
      private var _ownerName:String;
      
      private var var_612:String;
      
      private var var_2125:int;
      
      private var var_2123:RoomThumbnailData;
      
      private var var_1631:Boolean;
      
      private var var_582:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_582 = new Array();
         super();
         var_390 = param1.readInteger();
         var_672 = param1.readBoolean();
         var_612 = param1.readString();
         _ownerName = param1.readString();
         var_1636 = param1.readInteger();
         var_1897 = param1.readInteger();
         var_2125 = param1.readInteger();
         var_1119 = param1.readString();
         var_2127 = param1.readInteger();
         var_1631 = param1.readBoolean();
         var_2126 = param1.readInteger();
         var_1071 = param1.readInteger();
         var_2124 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_582.push(_loc4_);
            _loc3_++;
         }
         var_2123 = new RoomThumbnailData(param1);
         var_1630 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2125;
      }
      
      public function get roomName() : String
      {
         return var_612;
      }
      
      public function get userCount() : int
      {
         return var_1897;
      }
      
      public function get score() : int
      {
         return var_2126;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2124;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1631;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1630;
      }
      
      public function get event() : Boolean
      {
         return var_672;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_582 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1071;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2127;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2123;
      }
      
      public function get doorMode() : int
      {
         return var_1636;
      }
      
      public function get flatId() : int
      {
         return var_390;
      }
      
      public function get description() : String
      {
         return var_1119;
      }
   }
}
