package com.newtriks.restricted.modules.funky.api
{
    import asunit.asserts.*;

    import flash.display.Sprite;

    public class FunkyModuleTest
    {
        [Inject]
        public var context:Sprite;
        private var instance:FunkyModule;

        [Before]
        public function setUp():void
        {
            instance=new FunkyModule();
            context.addChild(instance);
        }

        [After]
        public function tearDown():void
        {
            context.removeChild(instance);
            instance=null;
            context=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is FunkyModule);
        }
    }
}

