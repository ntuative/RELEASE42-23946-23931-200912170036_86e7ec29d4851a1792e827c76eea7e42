package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_109:String = "RWPUE_VOTE_RESULT";
      
      public static const const_116:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1128:int;
      
      private var var_901:String;
      
      private var var_631:Array;
      
      private var var_939:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_901 = param2;
         var_939 = param3;
         var_631 = param4;
         if(var_631 == null)
         {
            var_631 = [];
         }
         var_1128 = param5;
      }
      
      public function get votes() : Array
      {
         return var_631.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1128;
      }
      
      public function get question() : String
      {
         return var_901;
      }
      
      public function get choices() : Array
      {
         return var_939.slice();
      }
   }
}
