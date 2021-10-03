package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_109:String = "RSPE_VOTE_RESULT";
      
      public static const const_116:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1128:int = 0;
      
      private var var_901:String = "";
      
      private var var_631:Array;
      
      private var var_939:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_939 = [];
         var_631 = [];
         super(param1,param2,param7,param8);
         var_901 = param3;
         var_939 = param4;
         var_631 = param5;
         if(var_631 == null)
         {
            var_631 = [];
         }
         var_1128 = param6;
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
