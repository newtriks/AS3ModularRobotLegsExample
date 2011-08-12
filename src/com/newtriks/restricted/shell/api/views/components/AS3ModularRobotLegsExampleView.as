package com.newtriks.restricted.shell.api.views.components
{
    import flash.display.Shape;
    import flash.display.Sprite;

    public class AS3ModularRobotLegsExampleView extends Sprite
    {
        public function AS3ModularRobotLegsExampleView()
        {
        }

        private var _modulesContainer:Sprite;
        public function get modulesContainer():Sprite
        {
            return _modulesContainer||=new Sprite();
        }

        public function layoutModulesContainer(width:Number, height:Number):void
        {
            addChild(modulesContainer);
            modulesContainer.addChild(background(width,height));
        }

        protected function background(width:Number,height:Number):Shape
        {
            var bg:Shape=new Shape();
            bg.graphics.beginFill(0xE4E4E4);
            bg.graphics.drawRect(0, 0, width, height);
            bg.graphics.endFill();
            return bg;
        }
    }
}
