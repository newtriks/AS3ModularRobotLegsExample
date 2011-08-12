package com.newtriks.restricted.modules.funky.restricted.controller.bootstraps
{
    import com.newtriks.restricted.modules.funky.api.FunkyModule;
    import com.newtriks.restricted.modules.funky.restricted.FunkyModuleMediator;

    import org.robotlegs.core.IMediatorMap;

    public class BootstrapViewMediators extends Object
    {
        public function BootstrapViewMediators(mediatorMap:IMediatorMap)
        {
            mediatorMap.mapView(FunkyModule, FunkyModuleMediator);
        }
    }
}