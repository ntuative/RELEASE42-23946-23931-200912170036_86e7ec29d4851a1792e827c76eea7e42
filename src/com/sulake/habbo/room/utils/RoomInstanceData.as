package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_825:LegacyWallGeometry = null;
      
      private var var_561:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_562:TileHeightMap = null;
      
      private var var_2076:String = null;
      
      private var _roomId:int = 0;
      
      private var var_826:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_825 = new LegacyWallGeometry();
         var_826 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_562 != null)
         {
            var_562.dispose();
         }
         var_562 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2076 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_825;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_826;
      }
      
      public function dispose() : void
      {
         if(var_562 != null)
         {
            var_562.dispose();
            var_562 = null;
         }
         if(var_825 != null)
         {
            var_825.dispose();
            var_825 = null;
         }
         if(var_826 != null)
         {
            var_826.dispose();
            var_826 = null;
         }
         if(var_561 != null)
         {
            var_561.dispose();
            var_561 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_562;
      }
      
      public function get worldType() : String
      {
         return var_2076;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_561 != null)
         {
            var_561.dispose();
         }
         var_561 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_561;
      }
   }
}
