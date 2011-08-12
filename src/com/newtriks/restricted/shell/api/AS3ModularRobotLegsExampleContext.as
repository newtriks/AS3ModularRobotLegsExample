package com.newtriks.restricted.shell.api
{
    import com.newtriks.restricted.shell.restricted.controller.StartupCommand;
    import com.newtriks.restricted.shell.restricted.controller.bootstraps.BootstrapCommands;
    import com.newtriks.restricted.shell.restricted.controller.bootstraps.BootstrapConfigValues;
    import com.newtriks.restricted.shell.restricted.controller.bootstraps.BootstrapModels;
    import com.newtriks.restricted.shell.restricted.controller.bootstraps.BootstrapModules;
    import com.newtriks.restricted.shell.restricted.controller.bootstraps.BootstrapSignals;
    import com.newtriks.restricted.shell.restricted.controller.bootstraps.BootstrapViewMediators;

    import org.osflash.signals.Signal;
    import org.robotlegs.utilities.modular.mvcs.ModuleContext;

    public class AS3ModularRobotLegsExampleContext extends ModuleContext
    {
        override public function startup():void
        {
            new BootstrapConfigValues(injector);
            new BootstrapModels(injector);
            new BootstrapCommands(signalCommandMap);
            new BootstrapSignals(injector);
            new BootstrapViewMediators(mediatorMap);
            new BootstrapModules(viewMap);

            var startup:Signal=new Signal();
            signalCommandMap.mapSignal(startup, StartupCommand);
            startup.dispatch();
        }
    }
}