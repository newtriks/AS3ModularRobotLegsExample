/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.restricted.models
{
    import flash.display.DisplayObjectContainer;
    import flash.display.Sprite;

    public interface IModuleStore
    {
        function get modules():ModuleDictionary;
        function addModule(item:Object, parent:DisplayObjectContainer):void;
        function removeModule(module:Sprite):void;
        function destroy():void;
    }
}
