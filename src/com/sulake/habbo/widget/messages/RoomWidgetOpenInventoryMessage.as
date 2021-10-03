package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_906:String = "inventory_badges";
      
      public static const const_1301:String = "inventory_clothes";
      
      public static const const_1152:String = "inventory_furniture";
      
      public static const const_601:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_935:String = "inventory_effects";
       
      
      private var var_1816:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_601);
         var_1816 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1816;
      }
   }
}
