package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_811:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1051:Boolean = true;
      
      private var var_1241:int = 0;
      
      private var var_738:int = 0;
      
      private var var_1106:int = 0;
      
      private var var_739:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1238:int = 15;
      
      private var var_178:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1239:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1106 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1051)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_738,var_739);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1241;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_738 == 0 && var_739 == 0;
      }
      
      private function resetLog() : void
      {
         var_738 = 0;
         var_739 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1051)
         {
            return;
         }
         if(getTimer() - var_1106 > var_1239 * 1000 && var_1241 < var_1238)
         {
            var_1106 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_178 = param1;
         var_1239 = int(var_178.getKey("lagwarninglog.interval","60"));
         var_1238 = int(var_178.getKey("lagwarninglog.reportlimit","15"));
         var_1051 = Boolean(int(var_178.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_739 += 1;
            case const_811:
               var_738 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
