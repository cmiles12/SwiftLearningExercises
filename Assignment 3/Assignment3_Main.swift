	import Foundation

// Creates Manager

	let manager = TodoManager()
	
// Creates and sets new Todo

	let todo1 = Todo()
	todo1.id = "a0b2c9e8-7e3c-4ae1-acbc-ca763a731cc3"
	todo1.title = "Exercies 1 - 14"
	todo1.subtitle = "Exercies for SwiftLearning, 1 - 14"
	todo1.status = .InProgress

// Adds todo to the list
	
	print("Add a Todo")
	manager.add(todo: todo1)
	
// Prints the one todo's title

	print("Print all your Todos (small description)")
	manager.each { (todo, index) in
		
		print("\t\(todo.title!)")
	}
	
// Prints the todo of given id with all stats

	print("\nPrint a single Todo (large description)")
	print(manager.get(id: "a0b2c9e8-7e3c-4ae1-acbc-ca763a731cc3")!)

	print("\nUpdate a Todo")
	todo1.status = .Completed
	manager.update(todo: todo1)
	manager.each { (todo, index) in

		print("\(index + 1))\n\(todo)")
	}
	
// Deletes the todo of the given id

	print("\nDelete a Todo")
	manager.delete(id: "a0b2c9e8-7e3c-4ae1-acbc-ca763a731cc3")
	manager.each { (todo, index) in
		
		print("\(index + 1))\n\(todo)")
	}