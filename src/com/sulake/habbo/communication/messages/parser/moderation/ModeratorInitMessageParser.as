package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1944:Boolean;
      
      private var var_1409:Array;
      
      private var var_1946:Boolean;
      
      private var var_1945:Boolean;
      
      private var var_1950:Boolean;
      
      private var var_150:Array;
      
      private var var_1943:Boolean;
      
      private var var_1947:Boolean;
      
      private var var_1410:Array;
      
      private var var_1949:Boolean;
      
      private var var_1948:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1948;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1944;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1946;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1943;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1947;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1409;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_150 = [];
         var_1409 = [];
         _roomMessageTemplates = [];
         var_1410 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_150.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1409.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1410.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1943 = param1.readBoolean();
         var_1950 = param1.readBoolean();
         var_1946 = param1.readBoolean();
         var_1945 = param1.readBoolean();
         var_1948 = param1.readBoolean();
         var_1947 = param1.readBoolean();
         var_1944 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1949 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1945;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1410;
      }
      
      public function get issues() : Array
      {
         return var_150;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1949;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1950;
      }
   }
}
