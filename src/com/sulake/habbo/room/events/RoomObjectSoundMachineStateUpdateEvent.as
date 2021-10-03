package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectSoundMachineStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const const_774:String = "ROSM_SOUND_MACHINE_SWITCHED_ON";
      
      public static const const_1155:String = "ROSM_JUKEBOX_INIT";
      
      public static const const_1276:String = "ROSM_SOUND_MACHINE_SWITCHED_OFF";
      
      public static const const_822:String = "ROSM_DISPOSE";
       
      
      private var var_2152:String;
      
      public function RoomObjectSoundMachineStateUpdateEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param3,param1,param2,param4,param5);
         var_2152 = param3;
      }
      
      public function get updateType() : String
      {
         return var_2152;
      }
   }
}
