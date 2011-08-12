package com.newtriks.restricted.shell.restricted.views.mediators
{
    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;

    import org.robotlegs.utilities.modular.mvcs.ModuleMediator;

    public class AS3ModularRobotLegsExampleViewMediator extends ModuleMediator
    {
        [Inject]
        public var view:AS3ModularRobotLegsExampleView;
        [Inject(name="constApplicationWidth")]
        public var APPLICATION_WIDTH:Number;
        [Inject(name="constApplicationHeight")]
        public var APPLICATION_HEIGHT:Number;

        override public function onRegister():void
        {
            view.layoutModulesContainer(APPLICATION_WIDTH, APPLICATION_HEIGHT);
        }
    }
}
