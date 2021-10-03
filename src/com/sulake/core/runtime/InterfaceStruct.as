package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_941:IID;
      
      private var var_380:uint;
      
      private var var_1134:IUnknown;
      
      private var var_1133:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_941 = param1;
         var_1133 = getQualifiedClassName(var_941);
         var_1134 = param2;
         var_380 = 0;
      }
      
      public function get iid() : IID
      {
         return var_941;
      }
      
      public function get references() : uint
      {
         return var_380;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_380) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1134;
      }
      
      public function get iis() : String
      {
         return var_1133;
      }
      
      public function reserve() : uint
      {
         return ++var_380;
      }
      
      public function dispose() : void
      {
         var_941 = null;
         var_1133 = null;
         var_1134 = null;
         var_380 = 0;
      }
   }
}
