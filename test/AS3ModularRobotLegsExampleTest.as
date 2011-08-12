/** @author: Simon Bailey <simon@newtriks.com> */
package
{
    import asunit.asserts.*;

    import flash.display.Sprite;

    public class AS3ModularRobotLegsExampleTest
    {
        [Inject]
        public var context:Sprite;
        private var as3ModularRobotLegsExample:AS3ModularRobotLegsExample;

        [Before]
        public function setUp():void
        {
            as3ModularRobotLegsExample=new AS3ModularRobotLegsExample();
            context.addChild(as3ModularRobotLegsExample);
        }

        [After]
        public function tearDown():void
        {
            context.removeChild(as3ModularRobotLegsExample);
            as3ModularRobotLegsExample=null;
            context=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(as3ModularRobotLegsExample is AS3ModularRobotLegsExample);
        }
    }
}