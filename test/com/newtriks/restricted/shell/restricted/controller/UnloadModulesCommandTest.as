package com.newtriks.restricted.shell.restricted.controller
{
    import asunit.asserts.*;
    import asunit.framework.IAsync;

    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;
    import com.newtriks.restricted.shell.restricted.models.IModuleStore;

    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.events.IEventDispatcher;

    import mockolate.nice;
    import mockolate.prepare;
    import mockolate.verify;

    public class UnloadModulesCommandTest
    {
        [Inject]
        public var async:IAsync;

        private var instance:UnloadModulesCommand;

        [Before]
        public function prepareMockolates():void
        {
            var mockolateMaker:IEventDispatcher=prepare(IModuleStore);
            async.proceedOnEvent(mockolateMaker, Event.COMPLETE, 5000);
        }

        [Before]
        public function setUp():void
        {
            instance=new UnloadModulesCommand();
            instance.eventDispatcher=new EventDispatcher();
            instance.contextView=new AS3ModularRobotLegsExampleView();
            instance.moduleStore=nice(IModuleStore);
        }

        [After]
        public function tearDown():void
        {
            instance=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is UnloadModulesCommand);
        }

        [Test]
        public function should_call_destroy_on_store():void
        {
            instance.execute();
            verify(instance.moduleStore).method("destroy");
        }

        [Test]
        public function module_container_should_have_no_children():void
        {
            instance.execute();
            assertEquals(instance.moduleContainer.numChildren, 0);
        }
    }
}

