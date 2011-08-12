package com.newtriks.restricted.modules.funky.restricted
{
    import com.newtriks.restricted.modules.funky.restricted.controller.StartupCommand;
    import com.newtriks.restricted.modules.funky.restricted.controller.bootstraps.BootstrapCommands;
    import com.newtriks.restricted.modules.funky.restricted.controller.bootstraps.BootstrapModels;
    import com.newtriks.restricted.modules.funky.restricted.controller.bootstraps.BootstrapViewMediators;

    import flash.display.DisplayObjectContainer;

    import org.osflash.signals.Signal;
    import org.robotlegs.core.IInjector;
    import org.robotlegs.utilities.modular.mvcs.ModuleContext;

    public class FunkyModuleContext extends ModuleContext
    {
        public function FunkyModuleContext(contextView:DisplayObjectContainer, injector:IInjector)
        {
            super(contextView, true, injector);
        }

        override public function startup():void
        {
            new BootstrapModels(injector);
            new BootstrapCommands(signalCommandMap);
            new BootstrapViewMediators(mediatorMap);

            var startup:Signal=new Signal();
            signalCommandMap.mapSignal(startup, StartupCommand);
            startup.dispatch();
        }
    }
}