package com.newtriks.restricted.shell.restricted.models
{
    import asunit.asserts.*;

    import flash.display.Sprite;

    public class ModuleDictionaryTest
    {
        private var instance:ModuleDictionary;
        private var module:Sprite;

        [Before]
        public function setUp():void
        {
            instance=new ModuleDictionary();
            module=new Sprite();
            instance.addModule(0, module);
        }

        [After]
        public function tearDown():void
        {
            instance=null;
            module=null;
        }

        [Test]
        public function should_be_instantiated():void
        {
            assertTrue(instance is ModuleDictionary);
        }

        [Test]
        public function add_module_adds_Module():void
        {
            assertNotNull(instance.getModule(0));
        }

        [Test]
        public function add_module_adds_Key():void
        {
            assertTrue(instance.keysVector.length>0);
        }

        [Test]
        public function remove_module_removes_Module():void
        {
            instance.removeModule(module);
            assertNull(instance.getModule(0));
        }

        [Test(expects="RangeError")]
        public function remove_module_removes_Key():void
        {
            instance.removeModule(module);
            instance.getModuleKey(module)
        }

        [Test]
        public function get_module_returns_Sprite():void
        {
            assertTrue(instance.getModule(0) is Sprite);
        }

        [Test]
        public function get_keys_returns_Vector_type_int():void
        {
            assertTrue(instance.keysVector is Vector.<int>);
        }

        [Test]
        public function get_module_key_returns_correct_index():void
        {
            var module:Sprite=new Sprite();
            instance.addModule(1, module);
            assertEquals(instance.getModuleKey(module), 1);
        }

        [Test]
        public function get_module_out_of_index_bounds_returns_null():void
        {
            assertNull(instance.getModule(1));
        }

        [Test]
        public function get_length_returns_1():void
        {
            assertEquals(instance.length, 1);
        }

        [Test]
        public function get_length_returns_int():void
        {
            assertTrue(instance.length is int);
        }
    }
}

