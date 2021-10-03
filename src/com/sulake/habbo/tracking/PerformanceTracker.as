package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1458:GarbageMonitor = null;
      
      private var var_1106:int = 0;
      
      private var var_1112:Boolean = false;
      
      private var var_1732:String = "";
      
      private var var_1457:String = "";
      
      private var var_343:Number = 0;
      
      private var var_1238:int = 10;
      
      private var var_2233:Array;
      
      private var var_586:int = 0;
      
      private var var_1239:int = 60;
      
      private var var_1001:int = 0;
      
      private var var_1000:int = 0;
      
      private var var_1728:String = "";
      
      private var var_2066:Number = 0;
      
      private var var_1240:int = 1000;
      
      private var var_2064:Boolean = true;
      
      private var var_2065:Number = 0.15;
      
      private var var_178:IHabboConfigurationManager = null;
      
      private var var_1726:String = "";
      
      private var var_1241:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2233 = [];
         super();
         var_1457 = Capabilities.version;
         var_1732 = Capabilities.os;
         var_1112 = Capabilities.isDebugger;
         var_1726 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1458 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1106 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1458.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1458.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_343;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1239 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1457;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1000;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1240)
         {
            ++var_1001;
            _loc3_ = true;
         }
         else
         {
            ++var_586;
            if(var_586 <= 1)
            {
               var_343 = param1;
            }
            else
            {
               _loc4_ = Number(var_586);
               var_343 = var_343 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1106 > var_1239 * 1000 && var_1241 < var_1238)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_343);
            _loc5_ = true;
            if(var_2064 && var_1241 > 0)
            {
               _loc6_ = differenceInPercents(var_2066,var_343);
               if(_loc6_ < var_2065)
               {
                  _loc5_ = false;
               }
            }
            var_1106 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2066 = var_343;
               if(sendReport())
               {
                  ++var_1241;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1238 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1240 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1726,var_1457,var_1732,var_1728,var_1112,_loc4_,_loc3_,var_1000,var_343,var_1001);
            _connection.send(_loc1_);
            var_1000 = 0;
            var_343 = 0;
            var_586 = 0;
            var_1001 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_178 = param1;
         var_1239 = int(var_178.getKey("performancetest.interval","60"));
         var_1240 = int(var_178.getKey("performancetest.slowupdatelimit","1000"));
         var_1238 = int(var_178.getKey("performancetest.reportlimit","10"));
         var_2065 = Number(var_178.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2064 = Boolean(int(var_178.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
