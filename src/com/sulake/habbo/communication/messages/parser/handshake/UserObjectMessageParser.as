package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_525:String;
      
      private var var_2203:String;
      
      private var var_2200:int;
      
      private var var_2201:int;
      
      private var var_1104:String;
      
      private var var_1074:String;
      
      private var _name:String;
      
      private var var_737:int;
      
      private var var_736:int;
      
      private var var_2202:int;
      
      private var var_1557:int;
      
      private var var_2204:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2201;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1074;
      }
      
      public function get customData() : String
      {
         return this.var_2203;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_737;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2200;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2204;
      }
      
      public function get figure() : String
      {
         return this.var_525;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1557;
      }
      
      public function get sex() : String
      {
         return this.var_1104;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_525 = param1.readString();
         this.var_1104 = param1.readString();
         this.var_2203 = param1.readString();
         this.var_1074 = param1.readString();
         this.var_2202 = param1.readInteger();
         this.var_2204 = param1.readString();
         this.var_2200 = param1.readInteger();
         this.var_2201 = param1.readInteger();
         this.var_1557 = param1.readInteger();
         this.var_736 = param1.readInteger();
         this.var_737 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2202;
      }
      
      public function get respectLeft() : int
      {
         return this.var_736;
      }
   }
}
