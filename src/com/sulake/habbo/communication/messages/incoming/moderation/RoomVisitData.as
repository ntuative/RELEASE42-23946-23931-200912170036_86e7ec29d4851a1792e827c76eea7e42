package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_612:String;
      
      private var var_1822:int;
      
      private var var_1485:Boolean;
      
      private var _roomId:int;
      
      private var var_1821:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1485 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_612 = param1.readString();
         var_1821 = param1.readInteger();
         var_1822 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1485;
      }
      
      public function get roomName() : String
      {
         return var_612;
      }
      
      public function get enterMinute() : int
      {
         return var_1822;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1821;
      }
   }
}
