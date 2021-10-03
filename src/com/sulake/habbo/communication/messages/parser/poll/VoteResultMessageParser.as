package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1128:int;
      
      private var var_901:String;
      
      private var var_631:Array;
      
      private var var_939:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_631.slice();
      }
      
      public function flush() : Boolean
      {
         var_901 = "";
         var_939 = [];
         var_631 = [];
         var_1128 = 0;
         return true;
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
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_901 = param1.readString();
         var_939 = [];
         var_631 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_939.push(param1.readString());
            var_631.push(param1.readInteger());
            _loc3_++;
         }
         var_1128 = param1.readInteger();
         return true;
      }
   }
}
