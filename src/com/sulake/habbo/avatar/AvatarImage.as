package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.avatar.actions.ActionDefinition;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.IAvatarDataContainer;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.cache.AvatarImageBodyPartCache;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.enum.AvatarType;
   import com.sulake.habbo.avatar.pets.IPetData;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.figure.FigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarImage implements IAvatarImage, IDisposable
   {
      
      private static const CHANNELS_UNIQUE:String = "CHANNELS_UNIQUE";
      
      private static const CHANNELS_EQUAL:String = "CHANNELS_EQUAL";
      
      private static const CHANNELS_SATURATED:String = "CHANNELS_SATURATED";
      
      private static const CHANNELS_BLUE:String = "CHANNELS_BLUE";
      
      private static const CHANNELS_RED:String = "CHANNELS_RED";
      
      private static const CHANNELS_GREEN:String = "CHANNELS_GREEN";
      
      private static const const_1041:int = 2;
      
      private static const const_1043:String = AvatarSetType.const_38;
      
      private static const const_1040:String = "Default";
      
      private static const const_1042:int = 125;
       
      
      private var _avatarSubType:int = 0;
      
      private var var_525:AvatarFigureContainer;
      
      private var _isDisposed:Boolean;
      
      private var var_177:Array;
      
      private var var_748:Boolean = false;
      
      private var var_192:String;
      
      private var var_2271:int;
      
      private var _image:BitmapData;
      
      private var var_1117:int;
      
      private var var_147:AvatarImageCache;
      
      private var var_291:Boolean;
      
      private var _isAnimating:Boolean;
      
      private var _assets:AssetAliasCollection;
      
      private var var_451:IAvatarDataContainer;
      
      private var var_450:int = 0;
      
      private var var_2272:int;
      
      private var var_1118:int = 0;
      
      private var var_931:int;
      
      private var var_193:Array;
      
      private var var_96:int;
      
      private var var_524:Array;
      
      private var var_656:String;
      
      private var var_170:IActiveActionData;
      
      private var var_75:AvatarStructure;
      
      public function AvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:String, param4:String, param5:String)
      {
         var _loc6_:int = 0;
         var_193 = [];
         var_524 = new Array();
         super();
         var_291 = true;
         var_75 = param1;
         _assets = param2;
         var_192 = param4;
         var_656 = param5;
         if(var_192 == null)
         {
            var_192 = AvatarScaleType.const_50;
         }
         if(param3 == null || param3 == "")
         {
            if(param5 == "user")
            {
               param3 = "hr-893-45.hd-180-2.ch-210-66.lg-270-82.sh-300-91.wa-2007-.ri-1-";
               Logger.log("Using default avatar figure");
            }
            else
            {
               param3 = "phd-1-5.pbd-1-5.ptl-1-5";
               Logger.log("Using default pet figure");
            }
         }
         var_525 = new AvatarFigureContainer(param3);
         if(param5 == AvatarType.PET)
         {
            _loc6_ = var_525.getPartSetId("pbd");
            solvePetAvatarTypeAndRace(_loc6_);
            _avatarSubType = var_931;
         }
         var_147 = new AvatarImageCache(var_75,this,_assets,var_192);
         setDirection(const_1043,const_1041);
         var_193 = new Array();
         resetActions();
      }
      
      private function logThis(param1:String) : void
      {
      }
      
      public function getCanvasOffsets() : Array
      {
         return var_524;
      }
      
      private function solvePetAvatarTypeAndRace(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_931 = 0;
         var_1117 = 0;
         var _loc2_:ISetType = var_75.figureData.getSetType("pbd");
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getPartSet(param1);
            if(_loc3_ != null)
            {
               for each(_loc4_ in _loc3_.parts)
               {
                  if(_loc4_.type == "pbd")
                  {
                     var_931 = _loc4_.id;
                     var_1117 = _loc4_.breed;
                     break;
                  }
               }
            }
         }
      }
      
      public function setScale(param1:String) : void
      {
         if(var_147 != null)
         {
         }
      }
      
      public function getSprites() : Array
      {
         return var_177;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            var_75 = null;
            _assets = null;
            var_147 = null;
            var_170 = null;
            var_525 = null;
            var_451 = null;
            var_193 = null;
            if(_image)
            {
               _image.dispose();
            }
            _image = null;
            var_524 = null;
            _isDisposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function setDirection(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         param2 += var_1118;
         if(param2 < AvatarDirectionAngle.const_1249)
         {
            param2 = AvatarDirectionAngle.const_502 + (param2 + 1);
         }
         if(param2 > AvatarDirectionAngle.const_502)
         {
            param2 -= NaN;
         }
         if(var_656 == AvatarType.PET && param1 == AvatarSetType.const_47)
         {
            if((var_96 == 6 || var_96 == 0) && param2 == 7)
            {
               param2 = var_96;
            }
            _loc3_ = var_75.renderManager.petDataManager.getPetData(_avatarSubType);
            if(_loc3_ != null)
            {
               if(_loc3_.disableHeadTurn)
               {
                  param2 = var_96;
               }
            }
         }
         if(var_75.isMainAvatarSet(param1))
         {
            var_96 = param2;
         }
         getCache().setDirection(param1,param2);
         var_291 = true;
      }
      
      public function getAsset(param1:String) : BitmapDataAsset
      {
         return _assets.getAssetByName(param1) as BitmapDataAsset;
      }
      
      public function getMainAction() : IActiveActionData
      {
         return var_170;
      }
      
      public function get avatarSpriteData() : IAvatarDataContainer
      {
         return var_451;
      }
      
      public function initActionAppends() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_193)
         {
            _loc1_.dispose();
         }
         var_193 = new Array();
         var_748 = false;
      }
      
      public function isAnimating() : Boolean
      {
         return _isAnimating;
      }
      
      public function endActionAppends() : void
      {
         sortActions();
         var_748 = true;
      }
      
      public function getSubType() : int
      {
         return _avatarSubType;
      }
      
      private function sortActions() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         resetActions();
         _isAnimating = false;
         var _loc1_:Array = var_75.sortActions(var_193);
         if(_loc1_ == null)
         {
            var_524 = new Array(0,0,0);
         }
         else
         {
            var_524 = var_75.getCanvasOffsets(_loc1_,var_192,var_96);
         }
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.definition.isAnimation && _loc2_.actionParameter == "")
            {
               _loc2_.actionParameter = "1";
            }
            setActionToParts(_loc2_);
            if(_loc2_.definition.isAnimation)
            {
               _isAnimating = true;
               _loc3_ = var_75.getAnimation(_loc2_.definition.state + "." + _loc2_.actionParameter);
               if(_loc3_ != null)
               {
                  var_177 = var_177.concat(_loc3_.spriteData);
                  if(_loc3_.hasDirectionData())
                  {
                     var_1118 = _loc3_.directionData.offset;
                  }
                  if(_loc3_.hasAvatarData())
                  {
                     var_451 = _loc3_.avatarData;
                  }
               }
            }
            if(_loc2_.actionType == AvatarAction.const_592)
            {
               _isAnimating = true;
            }
            if(_loc2_.actionType == AvatarAction.const_416)
            {
               _isAnimating = true;
            }
            if(_loc2_.actionType == AvatarAction.const_378)
            {
               _isAnimating = true;
            }
         }
      }
      
      private function addActionData(param1:String, param2:String = "") : void
      {
         var _loc3_:* = null;
         if(var_193 == null)
         {
            var_193 = new Array();
         }
         var _loc4_:int = 0;
         while(_loc4_ < var_193.length)
         {
            _loc3_ = var_193[_loc4_];
            if(_loc3_.actionType == param1 && _loc3_.actionParameter == param2)
            {
               return;
            }
            _loc4_++;
         }
         var_193.push(new ActiveActionData(param1,param2));
      }
      
      public function getPartColor(param1:String) : IPartColor
      {
         return var_75.getPartColor(var_525,param1);
      }
      
      public function get petRace() : int
      {
         return var_1117;
      }
      
      public function getScale() : String
      {
         return var_192;
      }
      
      public function getCroppedImage(param1:String) : BitmapData
      {
         var _loc6_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:* = null;
         if(var_170 == null)
         {
            return null;
         }
         var _loc2_:AvatarImageCache = getCache();
         var _loc3_:AvatarCanvas = var_75.getCanvas(var_192,var_170.definition.geometryType);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         var _loc5_:Array = var_75.getBodyParts(param1,var_170.definition,var_96);
         var _loc7_:int = _loc5_.length - 1;
         while(_loc7_ >= 0)
         {
            _loc9_ = _loc5_[_loc7_];
            _loc10_ = _loc2_.getImageContainer(_loc9_,var_450);
            if(_loc10_ != null)
            {
               _loc11_ = _loc10_.getImage();
               if(_loc11_ == null)
               {
                  _loc4_.dispose();
                  return null;
               }
               _loc12_ = _loc10_.regPoint.clone();
               if(var_656 == AvatarType.PET)
               {
                  _loc14_ = getCache().getBodyPartCache(_loc9_);
                  _loc15_ = _loc14_.getAction();
                  _loc16_ = _loc15_.definition.assetPartDefinition;
                  _loc17_ = var_75.getParts(_loc9_,var_525,_loc15_,"pet",_loc14_.getDirection());
                  _loc18_ = 32;
                  if(var_192 == AvatarScaleType.const_95)
                  {
                     _loc18_ = 6;
                  }
                  if(_loc17_.length > 0)
                  {
                     _loc19_ = _loc17_[0];
                     _loc20_ = _loc19_.getFrameIndex(var_450);
                     _loc21_ = var_96;
                     _loc22_ = 1;
                     switch(var_96)
                     {
                        case 4:
                           _loc21_ = 2;
                           _loc22_ = -1;
                           break;
                        case 5:
                           _loc21_ = 1;
                           _loc22_ = -1;
                           break;
                        case 6:
                           _loc21_ = 0;
                           _loc22_ = -1;
                     }
                     _loc23_ = var_75.getPartActionOffset(getSubType(),var_192,_loc9_,_loc16_,_loc20_,_loc21_);
                     if(_loc23_ != null)
                     {
                        _loc12_.x += _loc23_.x * _loc22_;
                        _loc12_.y += _loc23_.y;
                        if(var_96 == 7 && _loc14_.getDirection() == 6)
                        {
                           _loc12_.offset(-1 * _loc18_,0);
                        }
                        else if(var_96 == 4 && _loc14_.getDirection() == 3)
                        {
                           _loc12_.offset(_loc18_,0);
                        }
                        else if(var_96 == 3 && _loc14_.getDirection() == 4)
                        {
                           _loc12_.offset(-1 * _loc18_,0);
                        }
                        else if(var_96 == 6 && _loc14_.getDirection() == 7)
                        {
                           _loc12_.offset(_loc18_,0);
                        }
                     }
                  }
               }
               _loc4_.copyPixels(_loc11_,_loc11_.rect,_loc12_,null,null,true);
               _loc13_ = new Rectangle(_loc12_.x,_loc12_.y,_loc11_.width,_loc11_.height);
               if(_loc6_ == null)
               {
                  _loc6_ = _loc13_;
               }
               else
               {
                  _loc6_ = _loc6_.union(_loc13_);
               }
            }
            _loc7_--;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new Rectangle(0,0,10,10);
         }
         var _loc8_:BitmapData = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
         _loc8_.copyPixels(_loc4_,_loc6_,new Point(0,0),null,null,true);
         _loc4_.dispose();
         return _loc8_;
      }
      
      public function getImage(param1:String) : BitmapData
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = false;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:* = null;
         if(!var_291)
         {
            return null;
         }
         if(var_170 == null)
         {
            return null;
         }
         if(!var_748)
         {
            endActionAppends();
         }
         var _loc2_:AvatarImageCache = getCache();
         var _loc3_:AvatarCanvas = var_75.getCanvas(var_192,var_170.definition.geometryType);
         if(_image == null || _loc3_ != null && (_image.width != _loc3_.width || _image.height != _loc3_.height))
         {
            _loc3_ = var_75.getCanvas(var_192,var_170.definition.geometryType);
            if(_loc3_ == null)
            {
               return null;
            }
            _image = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         }
         var _loc4_:Array = var_75.getBodyParts(param1,var_170.definition,var_96);
         _image.lock();
         _image.fillRect(_image.rect,16777215);
         var _loc5_:Point = _loc3_.offset;
         if(_loc5_ == null)
         {
            _loc5_ = new Point(0,0);
         }
         var _loc6_:int = _loc4_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc7_ = _loc4_[_loc6_];
            _loc8_ = _loc2_.getImageContainer(_loc7_,var_450);
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.getImage();
               _loc10_ = _loc8_.regPoint.clone();
               if(var_656 == AvatarType.PET)
               {
                  _loc11_ = getCache().getBodyPartCache(_loc7_);
                  _loc12_ = _loc11_.getAction();
                  _loc13_ = _loc12_.definition.assetPartDefinition;
                  _loc14_ = var_75.getParts(_loc7_,var_525,_loc12_,"pet",_loc11_.getDirection());
                  _loc15_ = _avatarSubType < 3;
                  _loc16_ = !!_loc15_ ? 32 : 67;
                  if(var_192 == AvatarScaleType.const_95)
                  {
                     _loc16_ = !!_loc15_ ? 6 : 31;
                  }
                  if(_loc14_.length > 0)
                  {
                     _loc17_ = _loc14_[0];
                     _loc18_ = _loc17_.getFrameIndex(var_450);
                     _loc19_ = var_96;
                     _loc20_ = 1;
                     switch(var_96)
                     {
                        case 4:
                           _loc19_ = 2;
                           _loc20_ = -1;
                           break;
                        case 5:
                           _loc19_ = 1;
                           _loc20_ = -1;
                           break;
                        case 6:
                           _loc19_ = 0;
                           _loc20_ = -1;
                     }
                     _loc21_ = var_75.getPartActionOffset(getSubType(),var_192,_loc7_,_loc13_,_loc18_,_loc19_);
                     if(_loc21_ != null)
                     {
                        _loc10_.x += _loc21_.x * _loc20_;
                        _loc10_.y += _loc21_.y;
                        if(var_96 == 7 && _loc11_.getDirection() == 6)
                        {
                           _loc10_.offset(-1 * _loc16_,0);
                        }
                        else if(var_96 == 4 && _loc11_.getDirection() == 3)
                        {
                           _loc10_.offset(_loc16_,0);
                        }
                        else if(var_96 == 3 && _loc11_.getDirection() == 4)
                        {
                           _loc10_.offset(-1 * _loc16_,0);
                        }
                        else if(var_96 == 6 && _loc11_.getDirection() == 7)
                        {
                           _loc10_.offset(_loc16_,0);
                        }
                     }
                  }
               }
               _image.copyPixels(_loc9_,_loc9_.rect,_loc10_.add(_loc5_),null,null,true);
            }
            _loc6_--;
         }
         _image.unlock();
         var_291 = false;
         if(var_451 != null)
         {
            if(false)
            {
               _image = convertToGrayscale(_image);
               _image.paletteMap(_image,_image.rect,new Point(0,0),var_451.reds,[],[]);
            }
            else
            {
               _image.copyChannel(_image,_image.rect,new Point(0,0),2,8);
            }
         }
         return _image;
      }
      
      private function resetActions() : Boolean
      {
         var_177 = [];
         var_451 = null;
         var_1118 = 0;
         var_75.removeDynamicItems();
         var_170 = new ActiveActionData(AvatarAction.const_929);
         var_170.definition = var_75.getActionDefinition(const_1040);
         setActionToParts(var_170);
         getCache().resetBodyPartCache(var_170);
         return true;
      }
      
      public function updateAnimation(param1:Number) : void
      {
         var_450 = int(param1 % const_1042);
         var_291 = true;
      }
      
      public function updateAnimationByFrames(param1:int = 1) : void
      {
         var_450 += param1;
         var_291 = true;
      }
      
      public function setDirectionAngle(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param2 / 45;
         setDirection(param1,_loc3_);
      }
      
      private function errorThis(param1:String) : void
      {
         Logger.log("[AvatarImageError] " + param1);
      }
      
      private function getCache() : AvatarImageCache
      {
         if(var_147 == null)
         {
            var_147 = new AvatarImageCache(var_75,this,_assets,var_192);
         }
         return var_147;
      }
      
      private function setActionToParts(param1:IActiveActionData) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.definition.assetPartDefinition == "")
         {
            return;
         }
         if(param1.definition.isMain)
         {
            var_170 = param1;
            getCache().setGeometryType(param1.definition.geometryType);
         }
         getCache().setAction(param1);
         var_291 = true;
      }
      
      public function getDirection() : int
      {
         return var_96;
      }
      
      private function convertToGrayscale(param1:BitmapData, param2:String = "CHANNELS_EQUAL") : BitmapData
      {
         var _loc3_:* = 0.33;
         var _loc4_:* = 0.33;
         var _loc5_:* = 0.33;
         switch(param2)
         {
            case "CHANNELS_UNIQUE":
               _loc3_ = 0.3;
               _loc4_ = 0.59;
               _loc5_ = 0.11;
               break;
            case "CHANNELS_RED":
               _loc3_ = 1;
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case "CHANNELS_GREEN":
               _loc3_ = 0;
               _loc4_ = 1;
               _loc5_ = 0;
               break;
            case "CHANNELS_BLUE":
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 1;
               break;
            case "CHANNELS_DESATURATED":
               _loc3_ = 0.3086;
               _loc4_ = 0.6094;
               _loc5_ = 0.082;
         }
         var _loc7_:Array = [_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0];
         var _loc8_:ColorMatrixFilter = new ColorMatrixFilter(_loc7_);
         var _loc9_:BitmapData = new BitmapData(param1.width,param1.height,param1.transparent,4294967295);
         _loc9_.copyPixels(param1,param1.rect,new Point(0,0),null,null,false);
         _loc9_.applyFilter(_loc9_,_loc9_.rect,new Point(0,0),_loc8_);
         return _loc9_;
      }
      
      public function getFigure() : AvatarFigureContainer
      {
         return var_525;
      }
      
      public function getLayerData(param1:ISpriteDataContainer) : IAnimationLayerData
      {
         return var_75.getBodyPartData(param1.animation.id,var_450,param1.id);
      }
      
      public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_748 = false;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_727:
               switch(_loc3_)
               {
                  case "wav":
                     addActionData("wave");
                     break;
                  case AvatarAction.const_1242:
                     if(var_656 == AvatarType.HUMAN)
                     {
                        if(var_96 == 0)
                        {
                           setDirection(AvatarSetType.const_38,4);
                        }
                        else
                        {
                           setDirection(AvatarSetType.const_38,2);
                        }
                     }
                  case AvatarAction.const_919:
                  case AvatarAction.const_592:
                  case AvatarAction.const_843:
                  case AvatarAction.const_1319:
                  case AvatarAction.const_929:
                  case AvatarAction.const_937:
                  case AvatarAction.const_788:
                  case AvatarAction.const_1123:
                  case AvatarAction.const_1328:
                  case AvatarAction.const_1273:
                  case AvatarAction.const_867:
                  case AvatarAction.const_976:
                  case AvatarAction.const_1200:
                  case AvatarAction.const_1305:
                  case AvatarAction.const_894:
                  case AvatarAction.const_973:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN POSTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_297:
               switch(_loc3_)
               {
                  case AvatarAction.const_917:
                  case AvatarAction.const_991:
                  case AvatarAction.const_681:
                  case AvatarAction.const_983:
                  case AvatarAction.const_582:
                  case AvatarAction.const_926:
                  case AvatarAction.const_845:
                  case AvatarAction.const_841:
                  case AvatarAction.const_978:
                  case AvatarAction.const_916:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN GESTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_378:
            case AvatarAction.const_416:
            case AvatarAction.const_904:
            case AvatarAction.const_620:
            case AvatarAction.const_608:
            case AvatarAction.const_814:
               addActionData(param1,_loc3_);
               break;
            case AvatarAction.const_920:
            case AvatarAction.const_823:
               _loc4_ = var_75.getActionDefinitionWithState(param1);
               if(_loc4_ != null)
               {
                  logThis("appendAction:" + [_loc3_,"->",_loc4_.getParameterValue(_loc3_)]);
                  _loc3_ = _loc4_.getParameterValue(_loc3_);
               }
               addActionData(param1,_loc3_);
               break;
            default:
               errorThis("appendAction() >> UNKNOWN ACTION TYPE: " + param1);
         }
         return true;
      }
      
      public function get petType() : int
      {
         return var_931;
      }
   }
}
