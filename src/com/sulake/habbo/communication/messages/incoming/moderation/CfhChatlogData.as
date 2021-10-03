package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_932:int;
      
      private var var_2129:int;
      
      private var var_1493:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1493 = param1.readInteger();
         var_2129 = param1.readInteger();
         var_932 = param1.readInteger();
         var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1493);
      }
      
      public function get reportedUserId() : int
      {
         return var_932;
      }
      
      public function get callerUserId() : int
      {
         return var_2129;
      }
      
      public function get callId() : int
      {
         return var_1493;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_116;
      }
   }
}
