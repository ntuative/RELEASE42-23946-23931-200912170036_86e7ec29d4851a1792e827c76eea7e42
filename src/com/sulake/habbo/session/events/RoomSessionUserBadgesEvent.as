package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserBadgesEvent extends RoomSessionEvent
   {
      
      public static const const_104:String = "RSUBE_BADGES";
       
      
      private var _userId:int = 0;
      
      private var var_275:Array;
      
      public function RoomSessionUserBadgesEvent(param1:IRoomSession, param2:int, param3:Array, param4:Boolean = false, param5:Boolean = false)
      {
         var_275 = [];
         super(const_104,param1,param4,param5);
         _userId = param2;
         var_275 = param3;
      }
      
      public function get badges() : Array
      {
         return var_275;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
