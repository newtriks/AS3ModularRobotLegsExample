package com.newtriks.restricted.shell.restricted.controller
{
    import com.newtriks.restricted.shell.restricted.signals.LoadModules;

    import org.robotlegs.mvcs.Command;

    public class StartupCommand extends Command
    {
        [Inject]
        public var loadModules:LoadModules;

        override public function execute():void
        {
            loadModules.dispatch();
        }
    }
}