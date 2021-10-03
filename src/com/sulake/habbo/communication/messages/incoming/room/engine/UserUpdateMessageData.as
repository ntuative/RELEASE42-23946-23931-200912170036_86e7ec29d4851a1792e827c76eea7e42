package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      private var var_226:int = 0;
      
      private var var_1740:int = 0;
      
      private var var_2109:Number = 0;
      
      private var var_2106:Number = 0;
      
      private var var_2110:Number = 0;
      
      private var var_2107:Number = 0;
      
      private var var_2108:Boolean = false;
      
      private var var_91:Number = 0;
      
      private var _id:int = 0;
      
      private var var_193:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_193 = [];
         super();
         _id = param1;
         var_91 = param2;
         _y = param3;
         var_92 = param4;
         var_2107 = param5;
         var_226 = param6;
         var_1740 = param7;
         var_2109 = param8;
         var_2106 = param9;
         var_2110 = param10;
         var_2108 = param11;
         var_193 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function get dir() : int
      {
         return var_226;
      }
      
      public function get localZ() : Number
      {
         return var_2107;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2108;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1740;
      }
      
      public function get targetX() : Number
      {
         return var_2109;
      }
      
      public function get targetY() : Number
      {
         return var_2106;
      }
      
      public function get targetZ() : Number
      {
         return var_2110;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get actions() : Array
      {
         return var_193.slice();
      }
   }
}
