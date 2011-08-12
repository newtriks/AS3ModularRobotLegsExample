package com.newtriks.restricted.shell.restricted.controller
{
    import asunit.asserts.*;
    import asunit.framework.IAsync;

    import com.newtriks.restricted.shell.restricted.signals.LoadModules;

    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.events.IEventDispatcher;

    import mockolate.nice;
    import mockolate.prepare;
    import mockolate.verify;

    public class StartupCommandTest
    {
        [Inject]
        public var async:IAsync;

        private var instance:StartupCommand;

        [Before]
        public function prepareMockolates():void
        {
            var mockolateMaker:IEventDispatcher=prepare(LoadModules);
            async.proceedOnEvent(mockolateMaker, Event.COMPLETE, 5000);
        }

        [Before]
        public function setUp():void
        {
            instance=new StartupCommand();
            instance.eventDispatcher=new EventDispatcher();
            instance.loadModules=nice(LoadModules);
        }

        [After]
        public function tearDown():void
        {
            instance=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is StartupCommand);
        }

        [Test]
        public function should_dispatch_loadmodules_signal():void
        {
            instance.execute();
            verify(instance.loadModules).method("dispatch");
        }
    }
}

