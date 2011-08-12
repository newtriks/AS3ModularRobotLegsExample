package com.newtriks.restricted.modules.funky.restricted
{
    import asunit.asserts.*;

    import com.newtriks.restricted.modules.funky.api.FunkyModule;

    import flash.events.EventDispatcher;

    import org.robotlegs.adapters.SwiftSuspendersInjector;
    import org.robotlegs.mvcs.Mediator;

    public class FunkyModuleMediatorTest
    {
        private var instance:FunkyModuleMediator;

        [Before]
        public function setUp():void
        {
            instance=new FunkyModuleMediator();
            instance.view=new FunkyModule();
            instance.view.parentInjector=new SwiftSuspendersInjector();
            instance.setViewComponent(instance.view);
            instance.eventDispatcher=new EventDispatcher();
            instance.onRegister();
        }

        [After]
        public function tearDown():void
        {
            instance.onRemove();
            instance=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is FunkyModuleMediator);
        }

        [Test]
        public function is_mediator():void
        {
            assertTrue(instance is Mediator);
        }

        [Test]
        public function failure():void
        {
            assertTrue(true);
        }
    }
}