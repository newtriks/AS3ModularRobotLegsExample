/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.restricted.models
{
    import flash.display.Sprite;

    public class ModuleDictionary extends Object
    {
        public function ModuleDictionary()
        {
            this.moduleKeysVector=new Vector.<int>();
            this.moduleVector=new Vector.<Sprite>();
        }

        private var moduleKeysVector:Vector.<int>;
        private var moduleVector:Vector.<Sprite>;

        public function addModule(moduleKey:int, module:Sprite):void
        {
            this.moduleKeysVector[this.moduleKeysVector.length]=moduleKey;
            this.moduleVector[this.moduleVector.length]=module;
        }

        public function removeModule(module:Sprite):void
        {
            var index:int=this.moduleVector.indexOf(module);
            this.moduleKeysVector.splice(index, 1);
            this.moduleVector.splice(index, 1);
        }

        public function getModule(moduleKey:int):Sprite
        {
            var moduleKeyPosition:int=this.moduleKeysVector.indexOf(moduleKey);
            if(moduleKeyPosition==-1)
            {
                return null;
            }
            return this.moduleVector[moduleKeyPosition];
        }

        public function getModuleKey(module:Sprite):int
        {
            var moduleKeyPosition:int=this.moduleVector.indexOf(module);
            return this.moduleKeysVector[moduleKeyPosition];
        }

        public function get keysVector():Vector.<int>
        {
            return this.moduleKeysVector;
        }

        public function get length():int
        {
            return this.moduleVector.length;
        }
    }
}
