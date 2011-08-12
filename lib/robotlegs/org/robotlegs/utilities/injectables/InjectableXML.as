/** @author: Simon Bailey <simon@newtriks.com> */
package org.robotlegs.utilities.injectables
{
    public class InjectableXML
    {
        public function InjectableXML(value:XML)
        {
            _value=value;
        }

        protected var _value:XML;

        public function get value():XML
        {
            return _value;
        }

        public function toString():String
        {
            return _value.toString();
        }
    }
}