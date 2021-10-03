package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class AvatarPopupCtrl extends PopupCtrl
   {
       
      
      private var var_1073:String;
      
      private var var_1374:String;
      
      private var var_1074:String;
      
      private var var_1834:String;
      
      private var var_641:Boolean;
      
      private var var_1833:String;
      
      public function AvatarPopupCtrl(param1:HabboFriendList)
      {
         super(param1,5,-5,"avatar_popup");
      }
      
      public function setData(param1:Boolean, param2:String, param3:String, param4:String, param5:String, param6:String = "") : void
      {
         var_641 = param1;
         var_1374 = param2;
         var_1834 = param3;
         var_1833 = param4;
         var_1073 = param5;
         var_1074 = param6;
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         Util.hideChildren(param1);
         if(var_1074 != "")
         {
            friendList.refreshText(param1,"name_text_online",var_641,var_1074);
         }
         else
         {
            friendList.refreshText(param1,"name_text_online",var_641,var_1374);
         }
         friendList.refreshText(param1,"name_text_offline",!var_641,var_1374);
         friendList.refreshText(param1,"motto_text",var_641,var_1834);
         friendList.refreshButton(param1,"offline",!var_641,null,0);
         if(var_641)
         {
            refreshFigure(param1,var_1833);
            param1.findChildByName("online_text").visible = true;
         }
         else
         {
            param1.findChildByName("last_access_text").visible = true;
            friendList.registerParameter("friendlist.avatarpopup.lastaccess","last_access",var_1073 == null ? "" : var_1073);
         }
         param1.height = Util.getLowestPoint(param1) + 10;
      }
      
      private function refreshFigure(param1:IWindowContainer, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.getChildByName(HabboFriendList.const_169) as IBitmapWrapperWindow;
         if(param2 == null || param2 == "")
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.bitmap = friendList.getAvatarFaceBitmap(param2);
            _loc3_.width = _loc3_.bitmap.width;
            _loc3_.height = _loc3_.bitmap.height;
            _loc3_.visible = true;
         }
      }
   }
}
