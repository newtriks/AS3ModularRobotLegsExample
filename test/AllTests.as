package
{
    import com.newtriks.restricted.modules.funky.api.FunkyModuleTest;
    import com.newtriks.restricted.modules.funky.restricted.FunkyModuleMediatorTest;
    import com.newtriks.restricted.modules.funky.restricted.controller.StartupCommandTest;
    import com.newtriks.restricted.shell.api.views.components.AS3ModularRobotLegsExampleViewTest;
    import com.newtriks.restricted.shell.restricted.controller.LoadModulesCommandTest;
    import com.newtriks.restricted.shell.restricted.controller.StartupCommandTest;
    import com.newtriks.restricted.shell.restricted.controller.UnloadModulesCommandTest;
    import com.newtriks.restricted.shell.restricted.models.ModuleDictionaryTest;
    import com.newtriks.restricted.shell.restricted.models.ModuleStoreTest;
    import com.newtriks.restricted.shell.restricted.views.mediators.AS3ModularRobotLegsExampleViewMediatorTest;

    /**
     * This file has been automatically created using
     * #!/usr/bin/ruby script/generate suite
     * If you modify it and run this script, your
     * modifications will be lost!
     */
    [Suite]
    public class AllTests
    {
        public var com_newtriks_AS3ModularRobotLegsExample:AS3ModularRobotLegsExampleTest;
        public var com_newtriks_AS3ModularRobotLegsExampleView:AS3ModularRobotLegsExampleViewTest;
        public var com_newtriks_AS3ModularRobotLegsExampleViewMediatorConfigurator:AS3ModularRobotLegsExampleViewMediatorTest;
        public var com_newtriks_restricted_modules_funky_api_FunkyModuleTest:FunkyModuleTest;
        public var com_newtriks_restricted_modules_funky_restricted_FunkyModuleMediatorTest:FunkyModuleMediatorTest;
        public var com_newtriks_restricted_modules_funky_restricted_controller_commands_LoadModulesCommandTest:LoadModulesCommandTest;
        public var com_newtriks_restricted_modules_funky_restricted_controller_commands_UnloadModulesCommandTest:UnloadModulesCommandTest;
        public var com_newtriks_restricted_modules_funky_restricted_controller_commands_StartupCommandTest:com.newtriks.restricted.modules.funky.restricted.controller.StartupCommandTest;
        public var com_newtriks_restricted_shell_restricted_controller_StartupCommandTest:com.newtriks.restricted.shell.restricted.controller.StartupCommandTest;
        public var com_newtriks_restricted_shell_restricted_models_ModuleDictionaryTest:ModuleDictionaryTest;
        public var com_newtriks_restricted_shell_restricted_models_ModuleStoreTest:ModuleStoreTest;
    }
}

