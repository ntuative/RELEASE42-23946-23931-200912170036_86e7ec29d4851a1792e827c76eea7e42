package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_525:String;
      
      private var var_1073:String;
      
      private var var_1075:String;
      
      private var var_1071:int;
      
      private var _gender:int;
      
      private var var_1074:String;
      
      private var _name:String;
      
      private var var_1072:Boolean;
      
      private var var_641:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_641 = param1.readBoolean();
         this.var_1072 = param1.readBoolean();
         this.var_525 = param1.readString();
         this.var_1071 = param1.readInteger();
         this.var_1075 = param1.readString();
         this.var_1073 = param1.readString();
         this.var_1074 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1074;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1075;
      }
      
      public function get categoryId() : int
      {
         return var_1071;
      }
      
      public function get online() : Boolean
      {
         return var_641;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1072;
      }
      
      public function get lastAccess() : String
      {
         return var_1073;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_525;
      }
   }
}
