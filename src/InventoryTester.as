package {

	import flash.display.Sprite;
	import flash.text.TextField;

	import items.Car;
	import items.Key;

	import items.core.Inventory;

	public class InventoryTester extends Sprite {

		public function InventoryTester() {

			var textField:TextField=new TextField();
			textField.text="";
			addChild(textField);

			var inventory:Inventory= Inventory.getInstance();
			inventory.add(new Car().init());
			inventory.add(new Key().init());

			inventory.toggleState("items.Car", Car.LOCKED);
			inventory.toggleState("items.Key", Key.MISSING);

			textField.text+="Open car? "+inventory.status("items.Car", Car.UNLOCKED)+"\n";

			inventory.toggleState("items.Key", Key.FOUND);
			inventory.toggleState("items.Key", Key.MISSING);

			textField.text+="Open car? "+inventory.status("items.Car", Car.UNLOCKED)+"\n";

			if(inventory.status("items.Key", Key.FOUND)){
				inventory.toggleState("items.Car", Car.LOCKED);
				inventory.toggleState("items.Car", Car.UNLOCKED);
			}

			textField.text+="Open car? "+inventory.status("items.Car", Car.UNLOCKED)+"\n";

		}
	}
}
