package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1020:int = 80;
       
      
      private var var_440:Map;
      
      private var var_612:String = "";
      
      private var var_1093:Array;
      
      public function UserRegistry()
      {
         var_440 = new Map();
         var_1093 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_440.getValue(var_1093.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_612;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_440.getValue(param1) != null)
         {
            var_440.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_612);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_612 == "")
         {
            var_1093.push(param1);
         }
         var_440.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_440;
      }
      
      public function unregisterRoom() : void
      {
         var_612 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_440.length > const_1020)
         {
            _loc1_ = var_440.getKey(0);
            var_440.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_612 = param1;
         if(var_612 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
