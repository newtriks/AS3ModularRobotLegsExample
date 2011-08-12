/** @author: Simon Bailey <simon@newtriks.com> */
package org.robotlegs.utilities.injectables
{
    public class InjectableString
    {
        public function InjectableString(value:String)
        {
            _value=value;
        }

        protected var _value:String;

        public function get value():String
        {
            return _value;
        }

        public function toString():String
        {
            return _value;
        }
    }
}