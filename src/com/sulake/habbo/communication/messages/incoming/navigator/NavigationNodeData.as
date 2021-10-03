package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1217:int;
      
      private var var_1342:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1217 = param1;
         var_1342 = param2;
         Logger.log("READ NODE: " + var_1217 + ", " + var_1342);
      }
      
      public function get nodeName() : String
      {
         return var_1342;
      }
      
      public function get nodeId() : int
      {
         return var_1217;
      }
   }
}
