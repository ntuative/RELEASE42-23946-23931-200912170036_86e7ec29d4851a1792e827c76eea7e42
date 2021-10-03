package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_725:int = 2;
      
      public static const const_893:int = 6;
      
      public static const const_695:int = 1;
      
      public static const const_568:int = 3;
      
      public static const const_800:int = 4;
      
      public static const const_654:int = 5;
       
      
      private var var_2048:String;
      
      private var var_956:int;
      
      private var var_2047:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_956 = param2;
         var_2047 = param3;
         var_2048 = param4;
      }
      
      public function get time() : String
      {
         return var_2048;
      }
      
      public function get senderId() : int
      {
         return var_956;
      }
      
      public function get messageText() : String
      {
         return var_2047;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
