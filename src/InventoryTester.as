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

			inventory.changeState("Car", Car.LOCKED);
			inventory.changeState("Key", Key.MISSING);

			textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED)+"\n";

			inventory.changeState("Key", Key.FOUND);

			if(inventory.status("Key", Key.FOUND)){
				inventory.changeState("Car", Car.UNLOCKED);
			}

			textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED)+"\n";

		}
	}
}
