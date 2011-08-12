package
{
    import com.newtriks.restricted.shell.api.AS3ModularRobotLegsExampleContext;
    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleView;

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;

    public class AS3ModularRobotLegsExample extends Sprite
    {
        public function AS3ModularRobotLegsExample()
        {
            addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        }

        private function onAddedToStage(event:Event):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
            stage.scaleMode=StageScaleMode.NO_SCALE;
            stage.align=StageAlign.TOP_LEFT;
            init();
        }

        protected function init():void
        {
            var flash_mediaView:AS3ModularRobotLegsExampleView=new AS3ModularRobotLegsExampleView();
            addChild(flash_mediaView);
            var flash_mediaContext:AS3ModularRobotLegsExampleContext=new AS3ModularRobotLegsExampleContext();
            flash_mediaContext.contextView=flash_mediaView;
        }
    }
}
