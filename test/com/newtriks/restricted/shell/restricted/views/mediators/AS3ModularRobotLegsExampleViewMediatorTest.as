/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.restricted.views.mediators
{
    import asunit.asserts.*;
    import asunit.framework.IAsync;

    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;

    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.events.IEventDispatcher;

    import mockolate.nice;
    import mockolate.prepare;
    import mockolate.verify;

    import org.hamcrest.object.equalTo;

    public class AS3ModularRobotLegsExampleViewMediatorTest
    {
        private static const WIDTH:Number=800;
        private static const HEIGHT:Number=600;

        [Inject]
        public var async:IAsync;

        private var instance:AS3ModularRobotLegsExampleViewMediator;

        [Before]
        public function prepareMockolates():void
        {
            var mockolateMaker:IEventDispatcher=prepare(AS3ModularRobotLegsExampleView);
            async.proceedOnEvent(mockolateMaker, Event.COMPLETE, 5000);
        }

        [Before]
        public function setUp():void
        {
            instance=new AS3ModularRobotLegsExampleViewMediator();
            instance.view=nice(AS3ModularRobotLegsExampleView);
            instance.setViewComponent(instance.view);
            instance.APPLICATION_WIDTH=WIDTH;
            instance.APPLICATION_HEIGHT=HEIGHT;
            instance.eventDispatcher=new EventDispatcher();
            instance.onRegister();
        }

        [After]
        public function tearDown():void
        {
            instance=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is AS3ModularRobotLegsExampleViewMediator);
        }

        [Test]
        public function should_call_view_method_layoutModulesContainer():void
        {
            verify(instance.view).method("layoutModulesContainer").args(equalTo(WIDTH),
                                                                        equalTo(HEIGHT));
        }
    }
}