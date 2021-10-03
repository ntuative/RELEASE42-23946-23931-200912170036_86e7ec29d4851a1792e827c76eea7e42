package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1800:String;
      
      private var var_1056:String;
      
      private var var_1801:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1801 = param1;
         var_1056 = param2;
         var_1800 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1801,var_1056,var_1800];
      }
      
      public function dispose() : void
      {
      }
   }
}
