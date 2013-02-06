/**
 * User: Makai Media Inc.
 * Date: 11/28/12
 * Time: 4:43 PM
 */
package items.core {

	import flash.display3D.textures.Texture;
	import flash.utils.Dictionary;

	import mx.core.SoundAsset;

	public class GameObject{

		protected var inventory:Inventory=Inventory.getInstance();

		private static var _instance:GameObject;
		public var state:*;
		public var name:String;

		public function GameObject() {
		}

		public function changeState(state:*):void {
			this.state=state;
		}

		//override this to add parameters
		public function init():GameObject {
			return this;
		}
	}
}
