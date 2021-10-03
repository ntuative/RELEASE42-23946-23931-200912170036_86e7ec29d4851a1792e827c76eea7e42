package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1791:int;
      
      private var var_2043:int = 0;
      
      private var var_2040:String;
      
      private var var_2042:int;
      
      private var var_2041:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1791 = param1;
         var_2042 = param2;
         var_2041 = param3;
         var_2040 = param4;
      }
      
      public function get length() : int
      {
         return var_2042;
      }
      
      public function get name() : String
      {
         return var_2041;
      }
      
      public function get creator() : String
      {
         return var_2040;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2043;
      }
      
      public function get id() : int
      {
         return var_1791;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2043 = param1;
      }
   }
}
