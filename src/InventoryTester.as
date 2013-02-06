package {

	import flash.display.Sprite;
	import flash.text.TextField;

	import items.core.Inventory;

	public class InventoryTester extends Sprite {

		public function InventoryTester() {

			var textField:TextField=new TextField();
			textField.text="";
			addChild(textField);

			var inventory:Inventory= Inventory.getInstance();
			inventory.add(new Car().init());
			inventory.add(new Key().init());

			inventory.toggleState("Car", Car.LOCKED);
			inventory.toggleState("Key", Key.MISSING);

			textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED|Key.FOUND)+"\n";

			inventory.toggleState("Key", Key.FOUND);
			inventory.toggleState("Key", Key.MISSING);

			textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED|Key.FOUND)+"\n";

			if(inventory.status("Key", Key.FOUND)){
				inventory.toggleState("Car", Car.LOCKED);
				inventory.toggleState("Car", Car.UNLOCKED);
			}

			textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED|Key.FOUND)+"\n";

		}
	}
}
