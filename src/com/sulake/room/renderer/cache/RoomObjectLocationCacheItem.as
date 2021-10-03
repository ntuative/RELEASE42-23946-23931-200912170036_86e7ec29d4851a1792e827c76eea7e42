package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1549:int = -1;
      
      private var var_1148:int = -1;
      
      private var var_594:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_594 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1549;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1549 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_594.assign(param1);
         var_594.x = Math.round(var_594.x);
         var_594.y = Math.round(var_594.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1148 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_594;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1148;
      }
   }
}
