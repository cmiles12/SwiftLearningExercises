	import Foundation

	let todos = (
				(id: 1, title: "First Todo", date: "02-14-16", desc: "My first todo item", assigned: (first: "Mathew", last: "Sheets")),
				(id: 2, title: "Second Todo", date: "02-15-16", desc: "My second todo item", assigned: (first: "Jack", last: "Sheets")),
				(id: 3, title: "Third Todo", date: "02-16-16", desc: "My third todo item", assigned: (first: "Sam", last: "Sheets"))
				)
	var todo1 = (0, "", "", "", ("", ""))
	var todo2 = (0, "", "", "", ("", ""))
	var todo3 = (0, "", "", "", ("", ""))

	print("Print all your todos (small description)")
	
// Creates a mirror/sub-structure of todos (updates at beginning of each action)

	var todosMirror = Mirror(reflecting: todos)
	for case let (label?, todo) in todosMirror.children {
	
	// Subsets for title and prints
	
		let todoMirror = Mirror(reflecting: todo)
		for case let (label?, value) in todoMirror.children {
			if label == ".1" { // this is the title
				print("\t\(value)")
			}
		}
	}

	print("")
	print("Print a single todo (large description)")
	todosMirror = Mirror(reflecting: todos)
	
// FOR loop for each "data", and a SWITCH statement which formats and print
	
	for case let (label?, todo) in todosMirror.children {
		if label == ".0" {
			let todoMirror = Mirror(reflecting: todo)
			var output = ""
			for case let (label?, value) in todoMirror.children {
				switch label {
				case ".0":
					output += "id: \(value), "
				case ".2":
					output += "date: \(value), "
				case ".3":
					output += "description: \(value)"
				default:
					break
				}
			}
			print("\t\(output)")
		}
	}

	print("")
	print("Add a todo")
	var todo4 = (id: 4, title: "Fourth Todo", date: "02-17-16", desc: "My fourth todo item", assigned: (first: "Hudson", last: "Sheets"))
	todosMirror = Mirror(reflecting: todos)
	
// makes a new tuple formating the last todos for adding

	for case let (label?, todo) in todosMirror.children {
		var tuple = todo as! (Int, String, String, String, (String, String))
		switch label {
		case ".0":
			todo1 = tuple
		case ".1":
			todo2 = tuple
		case ".2":
			todo3 = tuple
		default:
			break
		}
	}
	
// Creates new todo with old todos plus new one, then prints with FOR loop
	
	let todoPlus1 = (todo1, todo2, todo3, todo4)
	todosMirror = Mirror(reflecting: todoPlus1)
	for case let (label?, todo) in todosMirror.children {
		let todoMirror = Mirror(reflecting: todo)
		for case let (label?, value) in todoMirror.children {
			if label == ".1" { // this is the title
				print("\t\(value)")
			}
		}
	}
	
	print("")
	print("Update a todo")
	todosMirror = Mirror(reflecting: todos)
	
// FOR loop prints each data for the first todo (IF statement)
	
	for case let (label?, todo) in todosMirror.children {
		if label == ".0" {
			var tuple = todo as! (Int, String, String, String, (String, String))
			tuple.1 = "1st Todo"
			print("\t\(tuple)")
		}
	}

	print("")
	print("Delete a todo")
	todosMirror = Mirror(reflecting: todoPlus1)
	
// makes a new tuple formating the last todos for deletion (similar to adding)
	
	for case let (label?, todo) in todosMirror.children {
		var tuple = todo as! (Int, String, String, String, (String, String))
		switch label {
		case ".0":
			todo1 = tuple
		case ".2":
			todo2 = tuple
		case ".3":
			todo3 = tuple
		default:
			break
		}
	}
	
// Sets the new tuple as just todo 1-3 and prints
	
	let todoMinus1 = (todo1, todo2, todo3)
	todosMirror = Mirror(reflecting: todoMinus1)
	for case let (label?, todo) in todosMirror.children {
		let todoMirror = Mirror(reflecting: todo)
		for case let (label?, value) in todoMirror.children {
			if label == ".1" { // this is the title
				print("\t\(value)")
			}
		}
	}
	
/*
	Final notes:
		Reading the simple todos (minus details) could be minimized using a fuction instead of repeated FOR structure
*/
