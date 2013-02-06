Inventory
=========

A simple, generic inventory system to keep track of items found, combined, or in any state for use in games.

        var textField:TextField=new TextField();
        textField.text="";
        addChild(textField);

        var inventory:Inventory= Inventory.getInstance();
        inventory.add(new Car().init());
        inventory.add(new Key().init());

        inventory.toggleState("Car", Car.LOCKED);
        inventory.toggleState("Key", Key.MISSING);

        textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED)+"\n";

        inventory.toggleState("Key", Key.FOUND);
        inventory.toggleState("Key", Key.MISSING);

        textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED)+"\n";

        if(inventory.status("Key", Key.FOUND)){
            inventory.toggleState("Car", Car.LOCKED);
            inventory.toggleState("Car", Car.UNLOCKED);
        }

        textField.text+="Open car? "+inventory.status("Car", Car.UNLOCKED)+"\n";
