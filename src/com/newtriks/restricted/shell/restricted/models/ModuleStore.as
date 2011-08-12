/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.restricted.models
{
    import flash.display.DisplayObjectContainer;
    import flash.display.Sprite;

    import org.robotlegs.mvcs.Actor;

    public class ModuleStore extends Actor implements IModuleStore
    {
        private var _modules:ModuleDictionary;

        public function ModuleStore()
        {
            _modules=new ModuleDictionary();
        }

        public function get modules():ModuleDictionary
        {
            return _modules;
        }

        public function addModule(item:Object, parent:DisplayObjectContainer):void
        {
            var module:Sprite=_modules.getModule(item.index) as Sprite;
            if(module==null)
            {
                module=Sprite(new item.module());
                _modules.addModule(item.index, module);
                parent.addChild(module);
            }
        }

        public function removeModule(module:Sprite):void
        {
            _modules.removeModule(module);
            var parent:DisplayObjectContainer=module.parent;
            parent.removeChild(module);
        }

        public function removeModuleUsingKey(key:int):void
        {
            removeModule(getModuleUsingKey(key));
        }

        public function getModuleUsingKey(key:int):Sprite
        {
            return _modules.getModule(key);
        }

        public function destroy():void
        {
            _modules=new ModuleDictionary();
        }
    }
}