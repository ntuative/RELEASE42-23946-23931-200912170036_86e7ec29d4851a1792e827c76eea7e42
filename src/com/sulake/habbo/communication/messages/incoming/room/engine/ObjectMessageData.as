package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1017:int = 0;
      
      private var var_1016:int = 0;
      
      private var _data:String = "";
      
      private var var_2262:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var var_2261:String = "";
      
      private var _id:int = 0;
      
      private var var_189:Boolean = false;
      
      private var var_226:int = 0;
      
      private var var_1552:String = null;
      
      private var var_91:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_189)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_189)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_226;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_189)
         {
            var_226 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_189)
         {
            _state = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return var_1552;
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_189)
         {
            var_1552 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_189)
         {
            _data = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_189 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_189)
         {
            var_1017 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_189)
         {
            var_1016 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_189)
         {
            var_92 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1016;
      }
      
      public function get sizeX() : int
      {
         return var_1017;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_189)
         {
            var_91 = param1;
         }
      }
   }
}
