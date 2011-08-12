package
{
    import asunit.core.TextCore;

    import flash.display.MovieClip;

    public class AS3ModularRobotLegsExampleRunner extends MovieClip
    {
        private var core:TextCore;

        public function AS3ModularRobotLegsExampleRunner()
        {
            core=new TextCore();
            core.start(AllTests, null, this);
        }
    }
}

