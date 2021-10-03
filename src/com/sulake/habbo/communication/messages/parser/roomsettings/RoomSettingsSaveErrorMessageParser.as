package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1535:int = 9;
      
      public static const const_1559:int = 4;
      
      public static const const_1489:int = 1;
      
      public static const const_1317:int = 10;
      
      public static const const_1413:int = 2;
      
      public static const const_1258:int = 7;
      
      public static const const_1144:int = 11;
      
      public static const const_1461:int = 3;
      
      public static const const_1303:int = 8;
      
      public static const const_1135:int = 5;
      
      public static const const_1435:int = 6;
      
      public static const const_1179:int = 12;
       
      
      private var var_1959:String;
      
      private var _roomId:int;
      
      private var var_1083:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1959;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1083 = param1.readInteger();
         var_1959 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1083;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
