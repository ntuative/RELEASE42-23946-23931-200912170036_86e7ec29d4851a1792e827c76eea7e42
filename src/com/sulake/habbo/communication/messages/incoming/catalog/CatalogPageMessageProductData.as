package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_245:String = "e";
      
      public static const const_75:String = "i";
      
      public static const const_87:String = "s";
       
      
      private var var_893:String;
      
      private var var_1065:String;
      
      private var var_1063:int;
      
      private var var_1914:int;
      
      private var var_894:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1065 = param1.readString();
         var_1914 = param1.readInteger();
         var_893 = param1.readString();
         var_894 = param1.readInteger();
         var_1063 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_894;
      }
      
      public function get productType() : String
      {
         return var_1065;
      }
      
      public function get expiration() : int
      {
         return var_1063;
      }
      
      public function get furniClassId() : int
      {
         return var_1914;
      }
      
      public function get extraParam() : String
      {
         return var_893;
      }
   }
}
