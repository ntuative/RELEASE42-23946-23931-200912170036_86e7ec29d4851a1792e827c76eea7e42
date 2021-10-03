package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_638:IWindowContainer;
      
      private var var_951:ITextWindow;
      
      private var var_195:RoomSettingsCtrl;
      
      private var var_1143:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_456:Timer;
      
      private var var_1144:ITextWindow;
      
      private var var_334:IWindowContainer;
      
      private var var_1823:IWindowContainer;
      
      private var var_1826:ITextWindow;
      
      private var var_761:IWindowContainer;
      
      private var var_1369:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_612:ITextWindow;
      
      private var var_1371:IWindowContainer;
      
      private var var_1140:IWindowContainer;
      
      private var var_762:ITextWindow;
      
      private var var_952:ITextFieldWindow;
      
      private var var_294:IWindowContainer;
      
      private var var_763:ITextWindow;
      
      private var var_1372:IButtonWindow;
      
      private var var_950:ITextWindow;
      
      private var var_2216:int;
      
      private var var_1142:IContainerButtonWindow;
      
      private var var_760:IWindowContainer;
      
      private var var_1146:ITextWindow;
      
      private var var_1141:IContainerButtonWindow;
      
      private var var_1370:ITextWindow;
      
      private var var_1373:IButtonWindow;
      
      private var var_902:TagRenderer;
      
      private var var_1825:ITextWindow;
      
      private var var_335:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_639:ITextWindow;
      
      private var var_258:RoomThumbnailCtrl;
      
      private var var_1145:IContainerButtonWindow;
      
      private var var_1824:IWindowContainer;
      
      private var var_259:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_335 = new RoomEventViewCtrl(_navigator);
         var_195 = new RoomSettingsCtrl(_navigator,this,true);
         var_258 = new RoomThumbnailCtrl(_navigator);
         var_902 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_195);
         var_456 = new Timer(6000,1);
         var_456.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_195.active = true;
         this.var_335.active = false;
         this.var_258.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1369.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1373.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1371.visible = Util.hasVisibleChildren(var_1371);
      }
      
      private function method_6(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_612.text = param1.roomName;
         var_612.height = NaN;
         _ownerName.text = param1.ownerName;
         var_762.text = param1.description;
         var_902.refreshTags(var_334,param1.tags);
         var_762.visible = false;
         if(param1.description != "")
         {
            var_762.height = NaN;
            var_762.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_334,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_334,"thumb_down",_loc3_,onThumbDown,0);
         var_1826.visible = _loc3_;
         var_763.visible = !_loc3_;
         var_1370.visible = !_loc3_;
         var_1370.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_334,"home",param2,null,0);
         _navigator.refreshButton(var_334,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_334,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_612.y,0);
         var_334.visible = true;
         var_334.height = Util.getLowestPoint(var_334);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_427,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1372.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1143.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1145.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1142.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1141.visible = _navigator.data.canEditRoomSettings && param1;
         var_1140.visible = Util.hasVisibleChildren(var_1140);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_456.reset();
         this.var_335.active = false;
         this.var_195.active = false;
         this.var_258.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_456.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_456.reset();
         this.var_335.active = false;
         this.var_195.active = false;
         this.var_258.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_427,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_294);
         var_294.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         method_6(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_195.refresh(var_294);
         this.var_258.refresh(var_294);
         Util.moveChildrenToColumn(var_294,["room_details","room_buttons"],0,2);
         var_294.height = Util.getLowestPoint(var_294);
         var_294.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_952.setSelection(0,var_952.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_259);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_335.refresh(var_259);
         if(Util.hasVisibleChildren(var_259) && !this.var_258.active)
         {
            Util.moveChildrenToColumn(var_259,["event_details","event_buttons"],0,2);
            var_259.height = Util.getLowestPoint(var_259);
            var_259.visible = true;
         }
         else
         {
            var_259.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_456.reset();
         this.var_335.active = true;
         this.var_195.active = false;
         this.var_258.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_456.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_951.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_951.height = NaN;
         var_1144.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1144.height = NaN;
         Util.moveChildrenToColumn(var_638,["public_space_name","public_space_desc"],var_951.y,0);
         var_638.visible = true;
         var_638.height = Math.max(86,Util.getLowestPoint(var_638));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_760.visible = true;
            var_952.text = this.getEmbedData();
         }
         else
         {
            var_760.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_456.reset();
         this.var_195.load(param1);
         this.var_195.active = true;
         this.var_335.active = false;
         this.var_258.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_456.reset();
         this.var_195.active = false;
         this.var_335.active = false;
         this.var_258.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_63,false);
         _window.setParamFlag(HabboWindowParam.const_1270,true);
         var_294 = IWindowContainer(find("room_info"));
         var_334 = IWindowContainer(find("room_details"));
         var_638 = IWindowContainer(find("public_space_details"));
         var_1824 = IWindowContainer(find("owner_name_cont"));
         var_1823 = IWindowContainer(find("rating_cont"));
         var_1140 = IWindowContainer(find("room_buttons"));
         var_612 = ITextWindow(find("room_name"));
         var_951 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_762 = ITextWindow(find("room_desc"));
         var_1144 = ITextWindow(find("public_space_desc"));
         var_950 = ITextWindow(find("owner_caption"));
         var_763 = ITextWindow(find("rating_caption"));
         var_1826 = ITextWindow(find("rate_caption"));
         var_1370 = ITextWindow(find("rating_txt"));
         var_259 = IWindowContainer(find("event_info"));
         var_761 = IWindowContainer(find("event_details"));
         var_1371 = IWindowContainer(find("event_buttons"));
         var_1825 = ITextWindow(find("event_name"));
         var_639 = ITextWindow(find("event_desc"));
         var_1143 = IContainerButtonWindow(find("add_favourite_button"));
         var_1145 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1142 = IContainerButtonWindow(find("make_home_button"));
         var_1141 = IContainerButtonWindow(find("unmake_home_button"));
         var_1372 = IButtonWindow(find("room_settings_button"));
         var_1369 = IButtonWindow(find("create_event_button"));
         var_1373 = IButtonWindow(find("edit_event_button"));
         var_760 = IWindowContainer(find("embed_info"));
         var_1146 = ITextWindow(find("embed_info_txt"));
         var_952 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1143,onAddFavouriteClick);
         Util.setProcDirectly(var_1145,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1372,onRoomSettingsClick);
         Util.setProcDirectly(var_1142,onMakeHomeClick);
         Util.setProcDirectly(var_1141,onUnmakeHomeClick);
         Util.setProcDirectly(var_1369,onEventSettingsClick);
         Util.setProcDirectly(var_1373,onEventSettingsClick);
         Util.setProcDirectly(var_952,onEmbedSrcClick);
         _navigator.refreshButton(var_1143,"favourite",true,null,0);
         _navigator.refreshButton(var_1145,"favourite",true,null,0);
         _navigator.refreshButton(var_1142,"home",true,null,0);
         _navigator.refreshButton(var_1141,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_294,onHover);
         Util.setProcDirectly(var_259,onHover);
         var_950.width = var_950.textWidth;
         Util.moveChildrenToRow(var_1824,["owner_caption","owner_name"],var_950.x,var_950.y,3);
         var_763.width = var_763.textWidth;
         Util.moveChildrenToRow(var_1823,["rating_caption","rating_txt"],var_763.x,var_763.y,3);
         var_1146.height = NaN;
         Util.moveChildrenToColumn(var_760,["embed_info_txt","embed_src_txt"],var_1146.y,2);
         var_760.height = Util.getLowestPoint(var_760) + 5;
         var_2216 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1825.text = param1.eventName;
         var_639.text = param1.eventDescription;
         var_902.refreshTags(var_761,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_639.visible = false;
         if(param1.eventDescription != "")
         {
            var_639.height = NaN;
            var_639.y = Util.getLowestPoint(var_761) + 2;
            var_639.visible = true;
         }
         var_761.visible = true;
         var_761.height = Util.getLowestPoint(var_761);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_931,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
