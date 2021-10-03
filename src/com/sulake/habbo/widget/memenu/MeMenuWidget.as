package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_659:String = "me_menu_settings_view";
      
      private static const const_752:int = 10;
      
      public static const const_626:String = "me_menu_effects_view";
      
      public static const const_122:String = "me_menu_top_view";
      
      public static const const_1233:String = "me_menu_rooms_view";
      
      public static const const_873:String = "me_menu_dance_moves_view";
      
      public static const const_260:String = "me_menu_my_clothes_view";
       
      
      private var var_1982:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1430:int = 0;
      
      private var var_1981:int = 0;
      
      private var var_1980:Boolean = false;
      
      private var var_265:Boolean = false;
      
      private var var_1984:int = 0;
      
      private var var_1860:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_553:Boolean = false;
      
      private var var_98:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1215:int = 0;
      
      private var var_1983:Boolean = false;
      
      private var var_989:Point;
      
      private var var_41:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_989 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1983 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_122);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_649,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_685,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_581,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_603,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_329,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_606,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_429,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_968,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_210,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_213,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_722,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_186,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_291,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_94,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_446,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_161,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_553;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_265)
         {
            return;
         }
         if(var_41.window.name == const_659)
         {
            (var_41 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1215 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1430 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1430.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_265 && var_41.window.name == const_260))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_559);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_649,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_685,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_581,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_603,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_329,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_210,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_213,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_722,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_606,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_429,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_968,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_186,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_291,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_446,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_94,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_161,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_41 != null)
         {
            var_41.dispose();
            var_41 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1982;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1860 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_98 != null)
         {
            var_98.dispose();
            var_98 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_1980;
      }
      
      public function get creditBalance() : int
      {
         return var_1430;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_446:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_265 + " view: " + var_41.window.name);
               if(var_265 != true || var_41.window.name != const_122)
               {
                  return;
               }
               (var_41 as MeMenuMainView).setIconAssets("clothes_icon",const_122,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_94:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1860 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1981;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_553 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_553 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1215 > 0;
         var_1215 = param1.daysLeft;
         var_1981 = param1.periodsLeft;
         var_1984 = param1.pastPeriods;
         var_1982 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_41 != null)
            {
               changeView(var_41.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1980 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_41 != null && var_41.window.name != const_260)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_41 != null && var_41.window.name == const_260)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_865)
            {
               var_98 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1207);
            }
            else
            {
               var_98 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_385);
            }
            _loc2_ = _mainContainer.getChildByName(var_41.window.name);
            if(_loc2_ != null)
            {
               var_98.window.x = _loc2_.width + const_752;
               _mainContainer.addChild(var_98.window);
               _mainContainer.width = var_98.window.x + var_98.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_553 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_553 = true;
            }
         }
         if(var_41 != null && var_41.window.name == const_626)
         {
            (var_41 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1984;
      }
      
      public function get habboClubDays() : int
      {
         return var_1215;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1163,HabboWindowStyle.const_782,HabboWindowParam.const_40,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_265 = !var_265;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_265 = false;
               break;
            default:
               return;
         }
         if(var_265)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_615);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_41 != null)
         {
            _mainContainer.removeChild(var_41.window);
            var_41.dispose();
            var_41 = null;
         }
         var_265 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_41 != null && var_41.window.name == const_260)
         {
            if(var_98 != null)
            {
               var_98.dispose();
               var_98 = null;
            }
            changeView(const_122);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1983;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_98 != null)
         {
            var_98.dispose();
            var_98 = null;
         }
         switch(param1)
         {
            case const_122:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_626:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_873:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_260:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1233:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_659:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_41 != null)
            {
               _mainContainer.removeChild(var_41.window);
               var_41.dispose();
               var_41 = null;
            }
            var_41 = _loc2_;
            var_41.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_41 != null)
         {
            var_989.x = var_41.window.width + 10;
            var_989.y = var_41.window.height;
            var_41.window.x = 5;
            var_41.window.y = 0;
            _mainContainer.width = var_989.x;
            _mainContainer.height = var_989.y;
            if(var_98 != null)
            {
               _mainContainer.width = var_98.window.x + var_98.window.width + const_752;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         changeView(const_122);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_555);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_265 = true;
      }
   }
}
