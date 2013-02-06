/**
 * User: Makai Media Inc.
 * Date: 2/6/13
 * Time: 10:49 AM
 */
package {

	import items.core.GameObject;

	public class Key extends GameObject {
		public static const MISSING:String="missing";
		public static const FOUND:String="found";

		public function Key() {
			super();
		}

		override public function init():GameObject {
			name = "Key";
			return super.init();
		}
	}
}
