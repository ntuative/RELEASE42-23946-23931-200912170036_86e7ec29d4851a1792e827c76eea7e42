package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1937:int;
      
      private var var_1940:String;
      
      private var var_1491:IActionDefinition;
      
      private var var_1941:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1936:String;
      
      private var var_1939:String;
      
      private var var_1849:Boolean;
      
      private var var_1938:ColorTransform;
      
      private var var_1935:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1940 = param1;
         var_1936 = param2;
         var_1937 = param3;
         _color = param4;
         _frames = param5;
         var_1491 = param6;
         var_1849 = param7;
         var_1935 = param8;
         var_1939 = param9;
         var_1941 = param10;
         var_1938 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1849;
      }
      
      public function get partType() : String
      {
         return var_1936;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1935;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1941;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1937;
      }
      
      public function get flippedPartType() : String
      {
         return var_1939;
      }
      
      public function get bodyPartId() : String
      {
         return var_1940;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1491;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1938;
      }
   }
}
