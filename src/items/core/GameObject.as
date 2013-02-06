/**
 * User: Makai Media Inc.
 * Date: 11/28/12
 * Time: 4:43 PM
 */
package items.core {

	import flash.display3D.textures.Texture;
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;

	import mx.core.SoundAsset;

	public class GameObject{

		protected var inventory:Inventory=Inventory.getInstance();

		public var name:String;
		protected var bitFlag:BitFlag;

		public function GameObject() {
		}

		public function toggleState(... flags ):void {
			bitFlag.toggleFlags(flags);
		}

		 public function hasFlags( ... flags ):Boolean{
			 return bitFlag.hasFlags(flags);
		 }

		//override this to add parameters
		public function init():GameObject {
			bitFlag = new BitFlag(getDefinitionByName(name) as Class);
			return this;
		}
	}
}
