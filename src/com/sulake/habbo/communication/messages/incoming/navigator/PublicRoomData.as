package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1748:int;
      
      private var var_2149:String;
      
      private var var_1755:int;
      
      private var _disposed:Boolean;
      
      private var var_2148:int;
      
      private var var_1961:String;
      
      private var var_1217:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1961 = param1.readString();
         var_1748 = param1.readInteger();
         var_1755 = param1.readInteger();
         var_2149 = param1.readString();
         var_2148 = param1.readInteger();
         var_1217 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2148;
      }
      
      public function get worldId() : int
      {
         return var_1755;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1961;
      }
      
      public function get unitPort() : int
      {
         return var_1748;
      }
      
      public function get castLibs() : String
      {
         return var_2149;
      }
      
      public function get nodeId() : int
      {
         return var_1217;
      }
   }
}
