/**
 * User: Makai Media Inc.
 * Date: 2/6/13
 * Time: 10:49 AM
 */
package {

	import items.core.GameObject;

	public class Car extends GameObject {
		public static const LOCKED:String="locked";
		public static const UNLOCKED:String="unlocked";

		public function Car() {
			super();
		}

		override public function init():GameObject {
			name = "Car";
			return super.init();
		}
	}
}
