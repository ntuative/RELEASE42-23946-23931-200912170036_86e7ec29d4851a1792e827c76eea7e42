package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1009:int = 31;
      
      private static const const_1010:int = 32;
      
      private static const const_480:int = 30;
      
      private static const const_734:int = 20;
      
      private static const const_481:int = 10;
       
      
      private var var_509:Boolean = false;
      
      private var var_212:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_212 = new Array();
         super();
         super.setAnimation(const_480);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_509 = true;
            var_212 = new Array();
            var_212.push(const_1009);
            var_212.push(const_1010);
            return;
         }
         if(param1 > 0 && param1 <= const_481)
         {
            if(var_509)
            {
               var_509 = false;
               var_212 = new Array();
               if(_direction == 2)
               {
                  var_212.push(const_734 + 5 - param1);
                  var_212.push(const_481 + 5 - param1);
               }
               else
               {
                  var_212.push(const_734 + param1);
                  var_212.push(const_481 + param1);
               }
               var_212.push(const_480);
               return;
            }
            super.setAnimation(const_480);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
