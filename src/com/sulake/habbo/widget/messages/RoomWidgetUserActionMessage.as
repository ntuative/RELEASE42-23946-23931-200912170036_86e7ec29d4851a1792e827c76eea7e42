package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_494:String = "RWUAM_RESPECT_USER";
      
      public static const const_599:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_690:String = "RWUAM_START_TRADING";
      
      public static const const_710:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_598:String = "RWUAM_WHISPER_USER";
      
      public static const const_509:String = "RWUAM_IGNORE_USER";
      
      public static const const_396:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_667:String = "RWUAM_BAN_USER";
      
      public static const const_536:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_357:String = "RWUAM_KICK_USER";
      
      public static const const_721:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_638:String = " RWUAM_RESPECT_PET";
      
      public static const const_423:String = "RWUAM_KICK_BOT";
      
      public static const const_1334:String = "RWUAM_TRAIN_PET";
      
      public static const const_691:String = "RWUAM_PICKUP_PET";
      
      public static const const_676:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_671:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
