package com.newtriks.restricted.shell.restricted.controller.bootstraps
{
    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;
    import com.newtriks.restricted.shell.restricted.views.mediators.AS3ModularRobotLegsExampleViewMediator;

    import org.robotlegs.core.IMediatorMap;

    public class BootstrapViewMediators extends Object
    {
        public function BootstrapViewMediators(mediatorMap:IMediatorMap)
        {
            mediatorMap.mapView(AS3ModularRobotLegsExampleView, AS3ModularRobotLegsExampleViewMediator);
        }
    }
}