package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1010:int = -1;
      
      private static const const_734:int = 20;
      
      private static const const_481:int = 9;
       
      
      private var var_509:Boolean = false;
      
      private var var_212:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_212 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_509 = true;
            var_212 = new Array();
            var_212.push(const_1010);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_509)
            {
               var_509 = false;
               var_212 = new Array();
               var_212.push(const_734);
               var_212.push(const_481 + param1);
               var_212.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
