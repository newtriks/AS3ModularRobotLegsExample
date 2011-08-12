package com.newtriks.restricted.modules.funky.restricted.controller
{
    import asunit.asserts.*;

    public class StartupCommandTest
    {
        private var instance:StartupCommand;

        [Before]
        public function setUp():void
        {
            instance=new StartupCommand();
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
    }
}

