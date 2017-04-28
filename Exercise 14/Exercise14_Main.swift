	import Foundation

	var finder = DataFinder()
	
// Goes through each type, deserializes them, prints them, then serializes them again

	print("----Int data type----")

	var ints = Database<Int>()

	ints.deserialize(filename: "ints.json") { (item) -> Int in

		return item as! Int
	}
	
	finder.each(items: [ints.items]) { print($0.0) }

	let intsJSONPayload = ints.serialize { return Array($0) }
	print(intsJSONPayload!)

	print("----String data type----")

	var strings = Database<String>()
	strings.deserialize(filename: "strings.json") { (item) -> String in
		
		return item as! String
	}

	finder.each(items: [strings.items]) { print($0.0) }

	let stringsJSONPayload = strings.serialize { return Array($0) }
	print(stringsJSONPayload!)

	print("----Array of Person data type----")

	var persons = Database<Person>()
	persons.deserialize(filename: "persons.json") { (item) -> Person in

		return Person(dictionary: item as! [String : AnyObject])
	}

	finder.each(items:  Array(persons.items)) { print("\($0.0.description)\n") }

	let personsJSONPayload = persons.serialize { Array($0).asDictionary }
	print(personsJSONPayload!)