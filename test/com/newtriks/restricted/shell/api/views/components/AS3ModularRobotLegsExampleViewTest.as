/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.shell.api.views.components
{
    import asunit.asserts.*;

    import flash.display.Sprite;

    public class AS3ModularRobotLegsExampleViewTest
    {
        [Inject]
        public var context:Sprite;
        private var instance:AS3ModularRobotLegsExampleView;

        [Before]
        public function setUp():void
        {
            instance=new AS3ModularRobotLegsExampleView();
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
            assertTrue(instance is AS3ModularRobotLegsExampleView);
        }
    }
}