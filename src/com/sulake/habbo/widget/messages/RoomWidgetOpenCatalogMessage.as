package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_530:String = "RWOCM_CLUB_MAIN";
      
      public static const const_646:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2143:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_646);
         var_2143 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2143;
      }
   }
}
