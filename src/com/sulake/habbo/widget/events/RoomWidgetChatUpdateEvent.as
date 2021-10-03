package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:int = 1;
      
      public static const const_267:int = 4;
      
      public static const const_233:int = 3;
      
      public static const const_113:int = 0;
      
      public static const const_578:String = "RWCUE_EVENT_CHAT";
      
      public static const const_92:int = 2;
       
      
      private var var_1760:int;
      
      private var var_205:String = "";
      
      private var var_1761:BitmapData;
      
      private var _userName:String;
      
      private var var_1153:int = 0;
      
      private var var_1764:uint;
      
      private var _userId:int = 0;
      
      private var _roomCategory:int;
      
      private var var_1763:Number;
      
      private var var_1762:Number;
      
      private var _roomId:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Boolean = false, param14:Boolean = false)
      {
         super(param1,param13,param14);
         _userId = param2;
         var_205 = param3;
         var_1153 = param12;
         _userName = param4;
         var_1760 = param5;
         var_1763 = param6;
         var_1762 = param7;
         var_1761 = param8;
         var_1764 = param9;
         _roomId = param10;
         _roomCategory = param11;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get userImage() : BitmapData
      {
         return var_1761;
      }
      
      public function get text() : String
      {
         return var_205;
      }
      
      public function get userX() : Number
      {
         return var_1763;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get userCategory() : int
      {
         return var_1760;
      }
      
      public function get chatType() : int
      {
         return var_1153;
      }
      
      public function get userColor() : uint
      {
         return var_1764;
      }
      
      public function get userY() : Number
      {
         return var_1762;
      }
   }
}
