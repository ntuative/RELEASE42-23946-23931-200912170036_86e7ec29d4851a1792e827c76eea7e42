package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1106:int = 1;
      
      private static const const_1010:int = 3;
      
      private static const const_1107:int = 2;
      
      private static const const_1105:int = 15;
       
      
      private var var_858:int;
      
      private var var_212:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_212 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1107)
         {
            var_212 = new Array();
            var_212.push(const_1106);
            var_858 = const_1105;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_858 > 0)
         {
            --var_858;
         }
         if(var_858 == 0)
         {
            if(false)
            {
               super.setAnimation(var_212.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
