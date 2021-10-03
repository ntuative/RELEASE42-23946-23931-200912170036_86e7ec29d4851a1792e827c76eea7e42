package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1514:BigInteger;
      
      private var var_978:BigInteger;
      
      private var var_2158:BigInteger;
      
      private var var_1513:BigInteger;
      
      private var var_2159:BigInteger;
      
      private var var_2074:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1514 = param1;
         var_2158 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2159.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1513 = new BigInteger();
         var_1513.fromRadix(param1,param2);
         var_2159 = var_1513.modPow(var_978,var_1514);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2074.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_978 = new BigInteger();
         var_978.fromRadix(param1,param2);
         var_2074 = var_2158.modPow(var_978,var_1514);
         return true;
      }
   }
}
