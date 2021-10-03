package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1782:IAnimation;
      
      private var var_1780:Boolean;
      
      private var var_1408:int;
      
      private var var_1130:Array;
      
      private var var_1781:String;
      
      private var _dx:Array;
      
      private var var_1129:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         var_1782 = param1;
         _id = String(param2.@id);
         var_1408 = parseInt(param2.@ink);
         var_1781 = String(param2.@member);
         var_1780 = Boolean(parseInt(param2.@directions));
         _dx = [];
         var_1129 = [];
         var_1130 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _dx[_loc4_] = parseInt(_loc3_.@dx);
            var_1129[_loc4_] = parseInt(_loc3_.@dy);
            var_1130[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function get animation() : IAnimation
      {
         return var_1782;
      }
      
      public function get hasDirections() : Boolean
      {
         return var_1780;
      }
      
      public function get member() : String
      {
         return var_1781;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < var_1130.length)
         {
            return var_1130[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < _dx.length)
         {
            return _dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < var_1129.length)
         {
            return var_1129[param1];
         }
         return 0;
      }
      
      public function get ink() : int
      {
         return var_1408;
      }
   }
}
