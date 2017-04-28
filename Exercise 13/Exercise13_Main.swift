	import Foundation

	var finder = DataFinder()

	print("----Int data type----")
	
	var ints = Database<Int>()
	ints.add(item: 1)
	ints.add(item: 2)
	ints.add(item: 3)
	ints.add(item: 4)
	ints.add(item: 5)
	ints.add(item: 6)
	print("removed: \(ints.remove(item: 6)!)")
	print("ints has \(ints.count) elements")

	finder.each(items: ints.items) { print($0) }

	print("----String data type----")
	var strings = Database<String>()
	strings.add(item: "One")
	strings.add(item: "Two")
	strings.add(item: "Three")
	strings.add(item: "Four")
	strings.add(item: "Five")
	strings.add(item: "Six")
	print("removed: \(strings.remove(item: "Six")!)")
	print("strings has \(strings.count) elements")

	let stringLengths = finder.pluck(items: strings.items) { return $0.characters.count }
	print(stringLengths)

	print("----Person data type----")

	var persons = Database<Person>()
	persons.add(item: Person(first: "Bobby", last: "Joe"))
	persons.add(item: Person(first: "Samantha", last: "Sue"))
	persons.add(item: Person(first: "Forest", last: "Gump"))

	let lastNameLessThen4 = finder.all(items: persons.items) { $0.last.characters.count < 4}
	print(lastNameLessThen4)