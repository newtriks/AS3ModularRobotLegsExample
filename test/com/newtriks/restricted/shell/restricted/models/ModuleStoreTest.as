package com.newtriks.restricted.shell.restricted.models
{
    import asunit.asserts.*;
    import asunit.asserts.assertNull;

    import flash.display.Sprite;
    import flash.utils.Dictionary;

    public class ModuleStoreTest
    {
        [Inject]
        public var context:Sprite;

        private var instance:ModuleStore;

        [Before]
        public function setUp():void
        {
            instance=new ModuleStore();
        }

        [After]
        public function tearDown():void
        {
            instance=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is ModuleStore);
        }

        [Test]
        public function module_is_added_to_parent_container():void
        {
            instance.addModule({module:Sprite, index:0}, context);
            assertTrue(context.getChildAt(0) is Sprite);
        }

        [Test]
        public function modules_is_type_ModuleDictionary():void
        {
            assertTrue(instance.modules is ModuleDictionary);
        }

        [Test(expects="TypeError")]
        public function adding_non_sprite_throws_error():void
        {
            instance.addModule({module:Dictionary, index:0}, context);
        }

        [Test]
        public function module_is_removed_from_parent_container_using_key():void
        {
            instance.addModule({module:Sprite, index:0}, context);
            var module:Sprite=instance.getModuleUsingKey(0);
            instance.removeModuleUsingKey(0);
            assertFalse(context.contains(module));
        }
    }
}

