	import Foundation
	
// Creates a class to maintain todos

	public class TodoManager {
		
		var todos = [Todo]()
		
		public init() {
			
		}
		
	// Sorts through the array for the given id, then returns if in array

		public func get(id: String) -> Todo? {

			guard let index = (indexOf() { $0.id == id }) else { return nil }
			
			return todos[index]
		}

	// Adds on the given todo
		
		public func add(todo: Todo) -> Todo {
			
			todos.append(todo)
			
			return todo
		}
		
	// Sorts through the array for the given index, and replaces it with the given todo
		
		public func update(todo: Todo) -> Todo? {
			
			guard let index = (indexOf() { $0.id == todo.id }) else { return nil }
			
			todos[index] = todo
			return todo
		}
		
	// Removes the given id
		
		public func delete(id: String) -> Todo? {
			
			guard let index = (indexOf() { $0.id == id }) else { return nil }
			
			return todos.remove(at: index)
		}
		
	// Iterates over the array of todos

		func iterator(closure: (Todo) -> Void) {
			
			for index in 0..<todos.count {
				
				closure(todos[index])
			}
		}
		
	// Calls iterator
		
		public func each(closure: (Todo, Int) -> Void) {
			
			var index = 0;
			
			iterator() {
				
				closure($0, index)
				
				index += 1
			}
		}
		
	// Iterates and adds each todo to a string array
		
		public func pluck(closure: (Todo) -> String) -> [String] {
			
			var plucked = [String]()
			
			iterator() { plucked.append(closure($0)) }
			
			return plucked
		}
		
	// Finds index of todo, or return nil
		
		public func indexOf(closure: (Todo) -> Bool) -> Int? {
			
			var index = -1
			var found = false
			
			iterator() { (todo) -> Void in
				
				if !found {
					
					if closure(todo)  {
						found = true
					}
					
					index += 1
				}
			}
			
			return index == -1 || !found ? nil : index
		}
		
		public func filter(closure: (Todo) -> Bool) -> [Todo]? {
			
			var filter = [Todo]()
			
			iterator() { (todo) -> Void in
				
				if closure(todo) {
					
					filter.append(todo)
				}
			}
			
			return !filter.isEmpty ? filter : nil
		}

	}