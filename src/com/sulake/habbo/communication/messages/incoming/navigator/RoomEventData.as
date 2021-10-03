package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1825:String;
      
      private var var_390:int;
      
      private var var_1875:String;
      
      private var var_1877:String;
      
      private var var_1878:int;
      
      private var var_1874:String;
      
      private var var_1876:int;
      
      private var var_582:Array;
      
      private var var_898:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_582 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_898 = false;
            return;
         }
         this.var_898 = true;
         var_1878 = int(_loc2_);
         var_1875 = param1.readString();
         var_390 = int(param1.readString());
         var_1876 = param1.readInteger();
         var_1825 = param1.readString();
         var_1877 = param1.readString();
         var_1874 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_582.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1876;
      }
      
      public function get eventName() : String
      {
         return var_1825;
      }
      
      public function get eventDescription() : String
      {
         return var_1877;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1875;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get creationTime() : String
      {
         return var_1874;
      }
      
      public function get exists() : Boolean
      {
         return var_898;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1878;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_390;
      }
   }
}
