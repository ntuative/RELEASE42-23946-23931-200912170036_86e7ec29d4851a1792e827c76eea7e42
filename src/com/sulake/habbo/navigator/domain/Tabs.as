package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_563:int = 6;
      
      public static const const_214:int = 5;
      
      public static const const_637:int = 2;
      
      public static const const_307:int = 9;
      
      public static const const_230:int = 4;
      
      public static const const_251:int = 2;
      
      public static const const_520:int = 4;
      
      public static const const_206:int = 8;
      
      public static const const_551:int = 7;
      
      public static const const_232:int = 3;
      
      public static const const_328:int = 1;
      
      public static const const_191:int = 5;
      
      public static const const_473:int = 12;
      
      public static const const_317:int = 1;
      
      public static const const_441:int = 11;
      
      public static const const_684:int = 3;
      
      public static const const_1449:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_415:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_415 = new Array();
         var_415.push(new Tab(_navigator,const_328,const_473,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_391));
         var_415.push(new Tab(_navigator,const_251,const_317,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_391));
         var_415.push(new Tab(_navigator,const_230,const_441,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_724));
         var_415.push(new Tab(_navigator,const_232,const_214,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_391));
         var_415.push(new Tab(_navigator,const_191,const_206,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_634));
         setSelectedTab(const_328);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_415)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_415)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_415)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_230;
      }
      
      public function get tabs() : Array
      {
         return var_415;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
