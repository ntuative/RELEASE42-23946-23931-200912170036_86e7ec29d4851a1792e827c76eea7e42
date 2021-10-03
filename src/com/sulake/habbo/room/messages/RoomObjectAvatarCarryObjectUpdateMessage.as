package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_904:int;
      
      private var var_1079:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_904 = param1;
         var_1079 = param2;
      }
      
      public function get itemType() : int
      {
         return var_904;
      }
      
      public function get itemName() : String
      {
         return var_1079;
      }
   }
}
