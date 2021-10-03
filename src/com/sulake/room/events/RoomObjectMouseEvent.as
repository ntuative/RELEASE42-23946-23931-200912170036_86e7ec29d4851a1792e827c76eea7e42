package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1422:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1438:String = "ROE_MOUSE_ENTER";
      
      public static const const_460:String = "ROE_MOUSE_MOVE";
      
      public static const const_1420:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_202:String = "ROE_MOUSE_CLICK";
      
      public static const const_426:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1708:Boolean;
      
      private var var_1705:Boolean;
      
      private var var_1711:Boolean;
      
      private var var_1713:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1711 = param4;
         var_1713 = param5;
         var_1708 = param6;
         var_1705 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1705;
      }
      
      public function get altKey() : Boolean
      {
         return var_1711;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1713;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1708;
      }
   }
}
