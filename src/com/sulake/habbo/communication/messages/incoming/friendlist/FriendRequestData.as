package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1864:int;
      
      private var var_1863:String;
      
      private var var_1126:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1126 = param1.readInteger();
         this.var_1863 = param1.readString();
         this.var_1864 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1126;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1864;
      }
      
      public function get requesterName() : String
      {
         return this.var_1863;
      }
   }
}
