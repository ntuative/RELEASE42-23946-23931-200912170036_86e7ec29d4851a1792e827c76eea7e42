package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2225:Boolean;
      
      private var var_2224:int;
      
      private var var_2226:Boolean;
      
      private var var_1374:String;
      
      private var var_1074:String;
      
      private var var_1567:int;
      
      private var var_1834:String;
      
      private var var_2223:String;
      
      private var var_1833:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1567 = param1.readInteger();
         this.var_1374 = param1.readString();
         this.var_1834 = param1.readString();
         this.var_2225 = param1.readBoolean();
         this.var_2226 = param1.readBoolean();
         param1.readString();
         this.var_2224 = param1.readInteger();
         this.var_1833 = param1.readString();
         this.var_2223 = param1.readString();
         this.var_1074 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1074;
      }
      
      public function get avatarName() : String
      {
         return this.var_1374;
      }
      
      public function get avatarId() : int
      {
         return this.var_1567;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2225;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2223;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1833;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2226;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1834;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2224;
      }
   }
}
