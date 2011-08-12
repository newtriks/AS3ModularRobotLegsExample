/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.restricted.controller
{
    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;
    import com.newtriks.restricted.shell.restricted.models.IModuleStore;

    import flash.display.DisplayObjectContainer;

    import org.robotlegs.mvcs.Command;

    public class UnloadModulesCommand extends Command
    {
        [Inject(name="modules")]
        public var modules:Array;

        [Inject]
        public var moduleStore:IModuleStore;

        override public function execute():void
        {
            moduleStore.destroy();

            var i:int;
            var iLength:int=moduleContainer.numChildren-1;
            for(i=iLength; i>=0; i--)
            {
                moduleContainer.removeChildAt(i);
            }
        }

        public function get moduleContainer():DisplayObjectContainer
        {
            return AS3ModularRobotLegsExampleView(contextView).modulesContainer;
        }
    }
}