package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_498:int = 8;
      
      public static const const_1549:int = 10;
      
      public static const const_1318:int = 6;
      
      private static var var_1027:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1237:int = 0;
      
      public static const const_1469:int = 1;
      
      public static const const_1531:int = 2;
      
      public static const const_1512:int = 3;
      
      public static const const_1418:int = 4;
      
      public static const const_1538:int = 5;
      
      public static const const_1542:int = 9;
      
      public static const const_1465:int = 7;
       
      
      private var var_181:uint = 0;
      
      private var var_1028:uint = 0;
      
      private var var_696:Date;
      
      private var var_2147:int = -1;
      
      private var parseFunc:Function;
      
      private var var_492:Boolean = false;
      
      private var var_2238:int = -1;
      
      private var var_1277:uint = 0;
      
      private var var_2145:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_852:uint;
      
      private var var_34:ByteArray;
      
      private var var_695:uint;
      
      private var var_1506:Boolean = false;
      
      private var var_2239:int = -1;
      
      private var var_1505:String = "2.0";
      
      private var var_182:Boolean = false;
      
      private var var_2146:Boolean = false;
      
      private var var_349:String;
      
      private var var_575:uint = 0;
      
      private var var_1278:int = 0;
      
      private var var_413:String = "";
      
      private var var_694:int = 8;
      
      private var var_1504:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_349 = param1;
         _extraFields = new Dictionary();
         var_34 = new ByteArray();
         var_34.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_575;
      }
      
      public function set filename(param1:String) : void
      {
         var_413 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_182 && false)
         {
            var_34.position = 0;
            if(var_1027)
            {
               var_34.uncompress.apply(var_34,["deflate"]);
            }
            else
            {
               var_34.uncompress();
            }
            var_34.position = 0;
            var_182 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_413;
      }
      
      public function get date() : Date
      {
         return var_696;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1504)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_181 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_181)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1505;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_182)
         {
            uncompress();
         }
         var_34.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_34.readUTFBytes(var_34.bytesAvailable);
         }
         else
         {
            _loc3_ = var_34.readMultiByte(var_34.bytesAvailable,param2);
         }
         var_34.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_694 === const_498 && !var_1506)
         {
            if(var_1027)
            {
               param1.readBytes(var_34,0,var_181);
            }
            else
            {
               if(!var_492)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_34.writeByte(120);
               _loc2_ = uint(~var_2147 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_34.writeByte(_loc2_);
               param1.readBytes(var_34,2,var_181);
               var_34.position = var_34.length;
               var_34.writeUnsignedInt(var_852);
            }
            var_182 = true;
         }
         else
         {
            if(var_694 != const_1237)
            {
               throw new Error("Compression method " + var_694 + " is not supported.");
            }
            param1.readBytes(var_34,0,var_181);
            var_182 = false;
         }
         var_34.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1028 + var_1277 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_34.length = 0;
         var_34.position = 0;
         var_182 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_34.writeUTFBytes(param1);
            }
            else
            {
               var_34.writeMultiByte(param1,param2);
            }
            var_695 = ChecksumUtil.CRC32(var_34);
            var_492 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_696 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1278 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1278 << 8 | 20);
         param1.writeShort(var_349 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_498);
         var _loc5_:Date = var_696 != null ? var_696 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_695);
         param1.writeUnsignedInt(var_181);
         param1.writeUnsignedInt(var_575);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_349 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_413);
         }
         else
         {
            _loc8_.writeMultiByte(var_413,var_349);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_492)
            {
               _loc16_ = var_182;
               if(_loc16_)
               {
                  uncompress();
               }
               var_852 = ChecksumUtil.Adler32(var_34,0,var_34.length);
               var_492 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_852);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_349 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2145);
            }
            else
            {
               _loc8_.writeMultiByte(var_2145,var_349);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_181 > 0)
         {
            if(var_1027)
            {
               _loc13_ = 0;
               param1.writeBytes(var_34,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_34,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_181;
      }
      
      protected function compress() : void
      {
         if(!var_182)
         {
            if(false)
            {
               var_34.position = 0;
               var_575 = var_34.length;
               if(var_1027)
               {
                  var_34.compress.apply(var_34,["deflate"]);
                  var_181 = var_34.length;
               }
               else
               {
                  var_34.compress();
                  var_181 = -6;
               }
               var_34.position = 0;
               var_182 = true;
            }
            else
            {
               var_181 = 0;
               var_575 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1028 + var_1277)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_349 == "utf-8")
         {
            var_413 = param1.readUTFBytes(var_1028);
         }
         else
         {
            var_413 = param1.readMultiByte(var_1028,var_349);
         }
         var _loc2_:uint = var_1277;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_413 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_852 = param1.readUnsignedInt();
               var_492 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1278 = _loc2_ >> 8;
         var_1505 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_694 = param1.readUnsignedShort();
         var_1506 = (_loc3_ & 1) !== 0;
         var_1504 = (_loc3_ & 8) !== 0;
         var_2146 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_349 = "utf-8";
         }
         if(var_694 === const_1318)
         {
            var_2239 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2238 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_694 === const_498)
         {
            var_2147 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_696 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_695 = param1.readUnsignedInt();
         var_181 = param1.readUnsignedInt();
         var_575 = param1.readUnsignedInt();
         var_1028 = param1.readUnsignedShort();
         var_1277 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_34,0,param1.length);
            var_695 = ChecksumUtil.CRC32(var_34);
            var_492 = false;
         }
         else
         {
            var_34.length = 0;
            var_34.position = 0;
            var_182 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_413 + "\n  date:" + var_696 + "\n  sizeCompressed:" + var_181 + "\n  sizeUncompressed:" + var_575 + "\n  versionHost:" + var_1278 + "\n  versionNumber:" + var_1505 + "\n  compressionMethod:" + var_694 + "\n  encrypted:" + var_1506 + "\n  hasDataDescriptor:" + var_1504 + "\n  hasCompressedPatchedData:" + var_2146 + "\n  filenameEncoding:" + var_349 + "\n  crc32:" + var_695.toString(16) + "\n  adler32:" + var_852.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_182)
         {
            uncompress();
         }
         return var_34;
      }
   }
}
