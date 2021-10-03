package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_116:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1897:int;
      
      private var var_390:int;
      
      private var var_672:RoomData;
      
      private var var_1597:int;
      
      private var _ownerName:String;
      
      private var var_1951:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_390 = param1.readInteger();
         var_1897 = param1.readInteger();
         var_1951 = param1.readBoolean();
         var_1597 = param1.readInteger();
         _ownerName = param1.readString();
         var_116 = new RoomData(param1);
         var_672 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1897;
      }
      
      public function get event() : RoomData
      {
         return var_672;
      }
      
      public function get room() : RoomData
      {
         return var_116;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_116 != null)
         {
            var_116.dispose();
            var_116 = null;
         }
         if(var_672 != null)
         {
            var_672.dispose();
            var_672 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_390;
      }
      
      public function get ownerId() : int
      {
         return var_1597;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1951;
      }
   }
}
