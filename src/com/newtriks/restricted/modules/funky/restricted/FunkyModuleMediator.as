package com.newtriks.restricted.modules.funky.restricted
{
    import com.newtriks.restricted.modules.funky.api.FunkyModule;

    import org.robotlegs.utilities.modular.mvcs.ModuleMediator;

    public class FunkyModuleMediator extends ModuleMediator
    {
        [Inject]
        public var view:FunkyModule;

        override public function onRegister():void
        {
            //
        }

        override public function onRemove():void
        {
            view.dispose();
        }
    }
}
