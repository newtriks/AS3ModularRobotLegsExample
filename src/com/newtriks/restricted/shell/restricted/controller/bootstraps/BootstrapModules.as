package com.newtriks.restricted.shell.restricted.controller.bootstraps
{
    import com.newtriks.restricted.modules.funky.api.FunkyModule;

    import org.robotlegs.core.IViewMap;

    public class BootstrapModules
    {
        public function BootstrapModules(viewMap:IViewMap)
        {
            viewMap.mapType(FunkyModule);
        }
    }
}