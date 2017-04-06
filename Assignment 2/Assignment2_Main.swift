import Foundation

// Prints "Title: Subtitle = Description"
	func printTodos(todos: [Todo]) {

		each(todos: todos) { (todo, index) -> Void in
			
			print("\t\(todo.0): \(todo.1) = \(todo.4)")
		}
	}

	
// Starts w/ a "todos" array of tasks 
	initData()
	
	print("Print all your Todos (small description)")
	printTodos(todos: todos)

	print("\nPrint a single Todo (large description)")
	var study = getTodo(id: "1")!
	print("\t\(description(todo: study))\n")


	print("Add a Todo")
	let sweep = createTodo(title: "Sweep", subtitle: "The stairs need a cleaning", description: "Sweep the stairs and then the bedrooms")

// Adds sweep to todos and reprints it
	addTodo(todo: sweep)
	printTodos(todos: todos)

// Sets the second todo as completed
	print("\nUpdate a Todo")
	updateTodo(todo: (study.0, study.1, study.2, study.3, Status.Completed))
	study = getTodo(id: "1")!
	print("\t\(description(todo: study))")

// Removes the first todo
	print("\nDelete a Todo")
	let weed = deleteTodo(id: "0")!
	print("\t\(description(todo: weed))\n")

// Prints the currect list of todos
	print("Updated list of Todos")
	printTodos(todos: todos)

// Prints out all incomplete todos (Food and Sweep) (Weed was deleted, study was completed)
	print("\nDisplay only non completed todos")
	let nonComplete = filter(todos: todos) { $0.4 != .Completed }
	printTodos(todos: nonComplete ?? [])