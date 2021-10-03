package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_99;
         param1["bound_to_parent_rect"] = const_81;
         param1["child_window"] = const_856;
         param1["embedded_controller"] = const_283;
         param1["resize_to_accommodate_children"] = const_58;
         param1["input_event_processor"] = const_46;
         param1["internal_event_handling"] = const_538;
         param1["mouse_dragging_target"] = const_197;
         param1["mouse_dragging_trigger"] = const_281;
         param1["mouse_scaling_target"] = const_248;
         param1["mouse_scaling_trigger"] = const_461;
         param1["horizontal_mouse_scaling_trigger"] = const_216;
         param1["vertical_mouse_scaling_trigger"] = const_196;
         param1["observe_parent_input_events"] = const_852;
         param1["optimize_region_to_layout_size"] = const_382;
         param1["parent_window"] = const_839;
         param1["relative_horizontal_scale_center"] = const_171;
         param1["relative_horizontal_scale_fixed"] = const_107;
         param1["relative_horizontal_scale_move"] = const_312;
         param1["relative_horizontal_scale_strech"] = const_263;
         param1["relative_scale_center"] = const_787;
         param1["relative_scale_fixed"] = const_585;
         param1["relative_scale_move"] = const_905;
         param1["relative_scale_strech"] = const_809;
         param1["relative_vertical_scale_center"] = const_153;
         param1["relative_vertical_scale_fixed"] = const_127;
         param1["relative_vertical_scale_move"] = const_276;
         param1["relative_vertical_scale_strech"] = const_270;
         param1["on_resize_align_left"] = const_503;
         param1["on_resize_align_right"] = const_398;
         param1["on_resize_align_center"] = const_362;
         param1["on_resize_align_top"] = const_527;
         param1["on_resize_align_bottom"] = const_420;
         param1["on_resize_align_middle"] = const_459;
         param1["on_accommodate_align_left"] = const_949;
         param1["on_accommodate_align_right"] = const_455;
         param1["on_accommodate_align_center"] = const_661;
         param1["on_accommodate_align_top"] = const_895;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_611;
         param1["route_input_events_to_parent"] = const_344;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_980;
         param1["scalable_with_mouse"] = const_900;
         param1["reflect_horizontal_resize_to_parent"] = const_447;
         param1["reflect_vertical_resize_to_parent"] = const_442;
         param1["reflect_resize_to_parent"] = const_241;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
