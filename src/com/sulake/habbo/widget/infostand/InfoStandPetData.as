package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1601:int;
      
      private var var_1598:int;
      
      private var var_2001:int;
      
      private var _type:int;
      
      private var var_1068:int = -1;
      
      private var var_2003:int;
      
      private var _nutrition:int;
      
      private var var_1998:int;
      
      private var _energy:int;
      
      private var var_1999:int;
      
      private var var_2002:int;
      
      private var var_2004:int;
      
      private var var_1600:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2000:Boolean;
      
      private var _name:String = "";
      
      private var var_1597:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2000;
      }
      
      public function get level() : int
      {
         return var_1601;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1998;
      }
      
      public function get id() : int
      {
         return var_1068;
      }
      
      public function get nutritionMax() : int
      {
         return var_2001;
      }
      
      public function get ownerId() : int
      {
         return var_1597;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1068 = param1.id;
         _type = param1.petType;
         var_1999 = param1.petRace;
         _image = param1.image;
         var_2000 = param1.isOwnPet;
         var_1597 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1601 = param1.level;
         var_2003 = param1.levelMax;
         var_1598 = param1.experience;
         var_1998 = param1.experienceMax;
         _energy = param1.energy;
         var_2002 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_2001 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2004 = param1.roomIndex;
         var_1600 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2004;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_2002;
      }
      
      public function get levelMax() : int
      {
         return var_2003;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1999;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1598;
      }
      
      public function get age() : int
      {
         return var_1600;
      }
   }
}
