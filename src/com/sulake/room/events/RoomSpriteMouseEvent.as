package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1705:Boolean = false;
      
      private var var_1711:Boolean = false;
      
      private var var_1704:String = "";
      
      private var _type:String = "";
      
      private var var_1708:Boolean = false;
      
      private var var_1710:Number = 0;
      
      private var var_1707:Number = 0;
      
      private var var_1706:Number = 0;
      
      private var var_1709:String = "";
      
      private var var_1712:Number = 0;
      
      private var var_1713:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1709 = param2;
         var_1704 = param3;
         var_1707 = param4;
         var_1706 = param5;
         var_1710 = param6;
         var_1712 = param7;
         var_1713 = param8;
         var_1711 = param9;
         var_1708 = param10;
         var_1705 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1713;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1705;
      }
      
      public function get localX() : Number
      {
         return var_1710;
      }
      
      public function get localY() : Number
      {
         return var_1712;
      }
      
      public function get canvasId() : String
      {
         return var_1709;
      }
      
      public function get altKey() : Boolean
      {
         return var_1711;
      }
      
      public function get spriteTag() : String
      {
         return var_1704;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1707;
      }
      
      public function get screenY() : Number
      {
         return var_1706;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1708;
      }
   }
}
