/**
 * User: Makai Media Inc.
 * Date: 12/5/12
 * Time: 1:26 PM
 */
package items.core {

	import flash.utils.Dictionary;

	public class Inventory {

		public var slots:Dictionary = new Dictionary();
		private static var _instance:Inventory;

		public function Inventory() {
		}

		public static function getInstance():Inventory {
			if (!_instance) {
				_instance = new Inventory();
			}
			return _instance;
		}

		public function clear():void{
			slots = new Dictionary();
		}

		public function add(gameObject:GameObject):void {
			if (!slots[gameObject.name]) {
				slots[gameObject.name] = gameObject;
			}
		}

		public function remove(gameObject:GameObject):void {
			if (slots[gameObject.name]) {
				slots[gameObject.name] = null;
			}
		}

		public function get(name:String, state:int = 0):GameObject {
			return  slots[name] as GameObject;
		}

		public function status(name:String, state:*):Boolean{
			if(slots[name]){
				if(slots[name].state==state){
					return true;
				}
			}
			return false;
		}

		public function changeState(name:String, state:*):void {
			trace("[Item State Changed for] ",name);
			if(slots[name]){
				slots[name].changeState(state);
			}
		}

	}
}