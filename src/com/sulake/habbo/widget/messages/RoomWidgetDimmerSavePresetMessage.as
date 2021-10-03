package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_692:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2084:int;
      
      private var var_2083:int;
      
      private var var_2082:Boolean;
      
      private var var_992:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_692);
         var_2083 = param1;
         var_2084 = param2;
         _color = param3;
         var_992 = param4;
         var_2082 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2084;
      }
      
      public function get presetNumber() : int
      {
         return var_2083;
      }
      
      public function get brightness() : int
      {
         return var_992;
      }
      
      public function get apply() : Boolean
      {
         return var_2082;
      }
   }
}
