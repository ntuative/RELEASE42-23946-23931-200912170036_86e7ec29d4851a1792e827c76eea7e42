package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_899:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_550:int = 2;
      
      public static const const_901:int = 1;
       
      
      private var var_1967:String;
      
      private var _disposed:Boolean;
      
      private var var_1897:int;
      
      private var var_1966:Boolean;
      
      private var var_708:String;
      
      private var var_808:PublicRoomData;
      
      private var _index:int;
      
      private var var_1963:String;
      
      private var _type:int;
      
      private var var_1582:String;
      
      private var var_807:GuestRoomData;
      
      private var var_1964:String;
      
      private var var_1965:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_1967 = param2.readString();
         var_1964 = param2.readString();
         var_1966 = param2.readInteger() == 1;
         var_1963 = param2.readString();
         var_708 = param2.readString();
         var_1897 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_901)
         {
            var_1582 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_808 = new PublicRoomData(param2);
         }
         else if(_type == const_550)
         {
            var_807 = new GuestRoomData(param2);
         }
         else if(_type == const_899)
         {
            var_1965 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1582;
      }
      
      public function get userCount() : int
      {
         return var_1897;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1966;
      }
      
      public function get picText() : String
      {
         return var_1963;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_901)
         {
            return 0;
         }
         if(this.type == const_550)
         {
            return this.var_807.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_808.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1964;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_807 != null)
         {
            this.var_807.dispose();
            this.var_807 = null;
         }
         if(this.var_808 != null)
         {
            this.var_808.dispose();
            this.var_808 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_1967;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_807;
      }
      
      public function get picRef() : String
      {
         return var_708;
      }
      
      public function get flatCategoryId() : int
      {
         return var_1965;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_808;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
