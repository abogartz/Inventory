Inventory
=========

A simple, generic inventory system to keep track of items found, combined, or in any state for use in games.

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
