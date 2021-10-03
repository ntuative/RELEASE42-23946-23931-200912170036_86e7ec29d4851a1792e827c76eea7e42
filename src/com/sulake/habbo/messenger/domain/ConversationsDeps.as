package com.sulake.habbo.messenger.domain
{
   import com.sulake.habbo.messenger.HabboMessenger;
   
   public class ConversationsDeps implements IConversationsDeps
   {
       
      
      private var var_146:HabboMessenger;
      
      public function ConversationsDeps(param1:HabboMessenger)
      {
         super();
         var_146 = param1;
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         var_146.messengerView.addMsgToView(param1,param2);
      }
      
      public function createConversation(param1:int) : Conversation
      {
         return var_146.createConversation(param1);
      }
      
      public function getText(param1:String) : String
      {
         return var_146.getText(param1);
      }
      
      public function getTabCount() : int
      {
         return var_146.messengerView.getTabCount();
      }
      
      public function refresh(param1:Boolean) : void
      {
         var_146.messengerView.refresh(param1);
      }
   }
}
