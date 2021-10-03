package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_92:Number = 0;
      
      private var _data:String = "";
      
      private var var_2262:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2072:Boolean = false;
      
      private var var_2261:String = "";
      
      private var _id:int = 0;
      
      private var var_189:Boolean = false;
      
      private var var_226:String = "";
      
      private var var_2071:int = 0;
      
      private var var_2070:int = 0;
      
      private var var_1710:int = 0;
      
      private var var_1712:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2072 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2072;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_189)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_226;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_189)
         {
            var_1710 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_189)
         {
            var_2071 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_189)
         {
            var_2070 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_189)
         {
            var_226 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_189)
         {
            var_1712 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_189)
         {
            _state = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1710;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_189)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2071;
      }
      
      public function get wallY() : Number
      {
         return var_2070;
      }
      
      public function get localY() : Number
      {
         return var_1712;
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
   }
}
