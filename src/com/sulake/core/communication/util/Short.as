package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_619:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_619 = new ByteArray();
         var_619.writeShort(param1);
         var_619.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_619.position = 0;
         if(false)
         {
            _loc1_ = var_619.readShort();
            var_619.position = 0;
         }
         return _loc1_;
      }
   }
}
