package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1158:Boolean;
      
      private var var_2046:String;
      
      private var _frames:XMLList;
      
      private var var_897:String = "-1";
      
      private var var_5:String;
      
      private var var_169:int = 120;
      
      private var var_1233:String = "-1";
      
      private var var_1232:String;
      
      private var var_2045:Boolean;
      
      private var var_1451:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1158 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_2045 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_169 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1232 = param1.@namebase;
         }
         else
         {
            var_1232 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_897 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1233 = param1.@nextState;
         }
         else
         {
            var_1233 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1451 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_2046 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_5 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_897 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_2045;
      }
      
      public function get defaultState() : String
      {
         return var_1451;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1451 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_2046;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_169;
      }
      
      public function get loop() : Boolean
      {
         return var_1158;
      }
      
      public function get nextState() : String
      {
         return var_1233;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_5;
      }
      
      public function get stateOver() : String
      {
         return var_897;
      }
      
      public function get nameBase() : String
      {
         return var_1232;
      }
   }
}
