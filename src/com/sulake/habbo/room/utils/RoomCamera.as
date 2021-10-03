package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_340:Number = 0.5;
      
      private static const const_748:int = 3;
      
      private static const const_1056:Number = 1;
       
      
      private var var_1884:Boolean = false;
      
      private var var_1886:Boolean = false;
      
      private var var_965:int = 0;
      
      private var var_260:Vector3d = null;
      
      private var var_1882:int = 0;
      
      private var var_1883:int = 0;
      
      private var var_1885:Boolean = false;
      
      private var var_1879:int = -2;
      
      private var var_1888:Boolean = false;
      
      private var var_1880:int = 0;
      
      private var var_1887:int = -1;
      
      private var var_386:Vector3d = null;
      
      private var var_1881:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1882;
      }
      
      public function get targetId() : int
      {
         return var_1887;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1880 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1882 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1884 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1887 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1886 = param1;
      }
      
      public function dispose() : void
      {
         var_386 = null;
         var_260 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_386 == null)
         {
            var_386 = new Vector3d();
         }
         var_386.assign(param1);
         var_965 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1879;
      }
      
      public function get screenHt() : int
      {
         return var_1881;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1883 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_260;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1881 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1880;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1884;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1886;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_386 != null && var_260 != null)
         {
            ++var_965;
            _loc2_ = Vector3d.dif(var_386,var_260);
            if(_loc2_.length <= const_340)
            {
               var_260 = var_386;
               var_386 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_340 * (const_748 + 1))
               {
                  _loc2_.mul(const_340);
               }
               else if(var_965 <= const_748)
               {
                  _loc2_.mul(const_340);
               }
               else
               {
                  _loc2_.mul(const_1056);
               }
               var_260 = Vector3d.sum(var_260,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1885 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1883;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1888 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1879 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_260 != null)
         {
            return;
         }
         var_260 = new Vector3d();
         var_260.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1885;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1888;
      }
   }
}
