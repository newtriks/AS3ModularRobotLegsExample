package com.newtriks.restricted.shell.restricted.controller.bootstraps
{
    import com.newtriks.restricted.shell.restricted.models.IModuleStore;
    import com.newtriks.restricted.shell.restricted.models.ModuleStore;

    import org.robotlegs.core.IInjector;

    public class BootstrapModels
    {
        public function BootstrapModels(injector:IInjector)
        {
            injector.mapSingletonOf(IModuleStore, ModuleStore);
        }
    }
}