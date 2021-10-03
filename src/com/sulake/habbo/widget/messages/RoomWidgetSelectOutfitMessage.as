package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_874:String = "select_outfit";
       
      
      private var var_1812:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_874);
         var_1812 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1812;
      }
   }
}
