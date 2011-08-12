package com.newtriks.restricted.shell.restricted.controller
{
    import asunit.asserts.*;
    import asunit.framework.IAsync;

    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;
    import com.newtriks.restricted.shell.restricted.models.IModuleStore;

    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.events.IEventDispatcher;

    import mockolate.nice;
    import mockolate.prepare;
    import mockolate.verify;

    import org.hamcrest.object.equalTo;

    public class LoadModulesCommandTest
    {
        [Inject]
        public var async:IAsync;

        private var instance:LoadModulesCommand;
        private var MODULE:Object={ module: Sprite };

        [Before]
        public function prepareMockolates():void
        {
            var mockolateMaker:IEventDispatcher=prepare(IModuleStore);
            async.proceedOnEvent(mockolateMaker, Event.COMPLETE, 5000);
        }

        [Before]
        public function setUp():void
        {
            instance=new LoadModulesCommand();
            instance.eventDispatcher=new EventDispatcher();
            instance.contextView=new AS3ModularRobotLegsExampleView();
            instance.moduleStore=nice(IModuleStore);
            instance.modules=[MODULE];
        }

        [After]
        public function tearDown():void
        {
            instance=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is LoadModulesCommand);
        }

        [Test]
        public function should_create_and_add_modules_to_store():void
        {
            instance.execute();
            verify(instance.moduleStore).method("addModule").args(equalTo(MODULE),
                                                                  equalTo(instance.moduleContainer));
        }
    }
}

