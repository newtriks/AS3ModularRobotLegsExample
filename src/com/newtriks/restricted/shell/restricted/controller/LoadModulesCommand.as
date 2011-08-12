/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.restricted.controller
{
    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;
    import com.newtriks.restricted.shell.restricted.models.IModuleStore;

    import flash.display.DisplayObjectContainer;

    import org.robotlegs.mvcs.Command;

    public class LoadModulesCommand extends Command
    {
        [Inject(name="modules")]
        public var modules:Array;

        [Inject]
        public var moduleStore:IModuleStore;

        override public function execute():void
        {
            var i:uint;
            var length:int=modules.length;
            var moduleItem:Object;
            try
            {
                for(i=0; i<length; i++)
                {
                    moduleItem=modules[i];
                    moduleItem.index=i;
                    moduleStore.addModule(moduleItem, moduleContainer);
                }
                trace("MODULES LOADED")
            }
            catch (error:Error)
            {
                trace("Unable to load all modules");
            }
        }

        public function get moduleContainer():DisplayObjectContainer
        {
            return AS3ModularRobotLegsExampleView(contextView).modulesContainer;
        }
    }
}