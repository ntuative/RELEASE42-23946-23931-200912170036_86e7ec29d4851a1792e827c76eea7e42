package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_217:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_217 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_217;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_217 = new RoomSettingsFlatInfo();
         var_217.allowFurniMoving = param1.readInteger() == 1;
         var_217.doorMode = param1.readInteger();
         var_217.id = param1.readInteger();
         var_217.ownerName = param1.readString();
         var_217.type = param1.readString();
         var_217.name = param1.readString();
         var_217.description = param1.readString();
         var_217.showOwnerName = param1.readInteger() == 1;
         var_217.allowTrading = param1.readInteger() == 1;
         var_217.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
