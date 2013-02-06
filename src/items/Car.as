/**
 * User: Makai Media Inc.
 * Date: 2/6/13
 * Time: 10:49 AM
 */
package items {

	import items.core.GameObject;

	public class Car extends GameObject {
		public static const LOCKED:uint=1 << 0;
		public static const UNLOCKED:uint=2 << 0;

		public function Car() {
			super();
		}

		override public function init():GameObject {
			name = "items.Car";
			return super.init();
		}
	}
}
