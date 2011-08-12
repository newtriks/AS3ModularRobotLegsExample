package com.newtriks.restricted.shell.restricted.controller.bootstraps
{
    import com.newtriks.restricted.modules.funky.api.FunkyModule;

    import org.robotlegs.core.IInjector;

    public class BootstrapConfigValues
    {
        public function BootstrapConfigValues(injector:IInjector)
        {
            injector.mapValue(Number, 420, 'constApplicationWidth');
            injector.mapValue(Number, 550, 'constApplicationHeight');
            injector.mapValue(Array, modules, 'modules');
        }

        protected function get modules():Array
        {
            return [
                { module: FunkyModule }
            ];
        }
    }
}