package com.newtriks.restricted.shell.restricted.controller.bootstraps
{
    import com.newtriks.restricted.shell.restricted.controller.LoadModulesCommand;
    import com.newtriks.restricted.shell.restricted.controller.UnloadModulesCommand;
    import com.newtriks.restricted.shell.restricted.signals.LoadModules;
    import com.newtriks.restricted.shell.restricted.signals.UnloadModules;

    import org.robotlegs.core.ISignalCommandMap;

    public class BootstrapCommands
    {
        public function BootstrapCommands(commandMap:ISignalCommandMap)
        {
            commandMap.mapSignalClass(LoadModules, LoadModulesCommand);
            commandMap.mapSignalClass(UnloadModules, UnloadModulesCommand);
        }
    }
}