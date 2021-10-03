package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_403:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_296:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_706:int;
      
      private var var_265:Boolean;
      
      private var var_2154:Boolean;
      
      private var var_1396:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_706 = param2;
         var_2154 = param3;
         var_265 = param4;
         var_1396 = param5;
      }
      
      public function get position() : int
      {
         return var_706;
      }
      
      public function get isActive() : Boolean
      {
         return var_265;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1396;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2154;
      }
   }
}
