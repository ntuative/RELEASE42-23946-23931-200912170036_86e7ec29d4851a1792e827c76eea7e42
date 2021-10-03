package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_706;
         param1["bitmap"] = const_495;
         param1["border"] = const_636;
         param1["border_notify"] = const_1288;
         param1["button"] = const_363;
         param1["button_thick"] = const_541;
         param1["button_icon"] = const_1112;
         param1["button_group_left"] = const_548;
         param1["button_group_center"] = const_717;
         param1["button_group_right"] = const_561;
         param1["canvas"] = const_504;
         param1["checkbox"] = const_566;
         param1["closebutton"] = const_862;
         param1["container"] = const_284;
         param1["container_button"] = const_537;
         param1["display_object_wrapper"] = const_557;
         param1["dropmenu"] = const_407;
         param1["dropmenu_item"] = const_452;
         param1["frame"] = const_292;
         param1["frame_notify"] = const_1265;
         param1["header"] = const_715;
         param1["icon"] = const_944;
         param1["itemgrid"] = const_887;
         param1["itemgrid_horizontal"] = const_410;
         param1["itemgrid_vertical"] = const_677;
         param1["itemlist"] = const_941;
         param1["itemlist_horizontal"] = const_318;
         param1["itemlist_vertical"] = const_311;
         param1["maximizebox"] = const_1208;
         param1["menu"] = const_1149;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_888;
         param1["minimizebox"] = const_1310;
         param1["notify"] = const_1142;
         param1["null"] = const_454;
         param1["password"] = const_605;
         param1["radiobutton"] = const_650;
         param1["region"] = const_431;
         param1["restorebox"] = const_1168;
         param1["scaler"] = const_833;
         param1["scaler_horizontal"] = const_1131;
         param1["scaler_vertical"] = const_1165;
         param1["scrollbar_horizontal"] = const_456;
         param1["scrollbar_vertical"] = const_560;
         param1["scrollbar_slider_button_up"] = const_783;
         param1["scrollbar_slider_button_down"] = const_819;
         param1["scrollbar_slider_button_left"] = const_876;
         param1["scrollbar_slider_button_right"] = const_821;
         param1["scrollbar_slider_bar_horizontal"] = const_938;
         param1["scrollbar_slider_bar_vertical"] = const_962;
         param1["scrollbar_slider_track_horizontal"] = const_966;
         param1["scrollbar_slider_track_vertical"] = const_969;
         param1["scrollable_itemlist"] = const_1198;
         param1["scrollable_itemlist_vertical"] = const_419;
         param1["scrollable_itemlist_horizontal"] = const_789;
         param1["selector"] = const_500;
         param1["selector_list"] = const_612;
         param1["submenu"] = const_888;
         param1["tab_button"] = const_506;
         param1["tab_container_button"] = const_805;
         param1["tab_context"] = const_393;
         param1["tab_content"] = const_838;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_701;
         param1["input"] = const_702;
         param1["toolbar"] = const_1336;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
