package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2091:String;
      
      private var var_787:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2091 = param1;
         var_787 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2091;
      }
      
      public function get parameter() : String
      {
         return var_787;
      }
   }
}
