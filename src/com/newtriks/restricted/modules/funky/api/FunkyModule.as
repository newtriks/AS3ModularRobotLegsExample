/** @author: Simon Bailey <simon@newtriks.com> */
package com.newtriks.restricted.modules.funky.api
{
    import com.newtriks.restricted.modules.funky.restricted.FunkyModuleContext;

    import flash.display.Sprite;
    import flash.text.TextField;

    import org.robotlegs.core.IInjector;
    import org.robotlegs.utilities.modular.core.IModule;
    import org.robotlegs.utilities.modular.core.IModuleContext;

    public class FunkyModule extends Sprite implements IModule
    {
        protected var context:IModuleContext;

        [Inject]
        public function set parentInjector(value:IInjector):void
        {
            context=new FunkyModuleContext(this, value);
        }

        public function dispose():void
        {
            if(parent&&parent.contains(this))
            {
                parent.removeChild(this);
            }
            context.dispose();
            context=null;
        }

        public function FunkyModule()
        {
            var textField:TextField=new TextField();
            textField.text="FUNKY MODULE";
            addChild(textField);
        }
    }
}