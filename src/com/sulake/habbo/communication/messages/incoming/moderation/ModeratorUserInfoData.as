package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1577:int;
      
      private var var_1579:int;
      
      private var var_1576:int;
      
      private var _userName:String;
      
      private var var_1578:int;
      
      private var var_1580:int;
      
      private var var_1575:int;
      
      private var _userId:int;
      
      private var var_641:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1580 = param1.readInteger();
         var_1578 = param1.readInteger();
         var_641 = param1.readBoolean();
         var_1576 = param1.readInteger();
         var_1579 = param1.readInteger();
         var_1577 = param1.readInteger();
         var_1575 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1575;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_641;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1578;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1579;
      }
      
      public function get cautionCount() : int
      {
         return var_1577;
      }
      
      public function get cfhCount() : int
      {
         return var_1576;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1580;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
