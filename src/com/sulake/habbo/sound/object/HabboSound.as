package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_997:SoundChannel = null;
      
      private var var_822:Boolean;
      
      private var var_998:Sound = null;
      
      private var var_653:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_998 = param1;
         var_998.addEventListener(Event.COMPLETE,onComplete);
         var_653 = 1;
         var_822 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_822;
      }
      
      public function stop() : Boolean
      {
         var_997.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_822 = false;
         var_997 = var_998.play(0);
         this.volume = var_653;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_653;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_997.position;
      }
      
      public function get length() : Number
      {
         return var_998.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_653 = param1;
         if(var_997 != null)
         {
            var_997.soundTransform = new SoundTransform(var_653);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_822 = true;
      }
   }
}
