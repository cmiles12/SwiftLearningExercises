	import Foundation
	import PlaygroundSupport
	import TodoApi

	PlaygroundPage.current.needsIndefiniteExecution = true
	URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

	TodoApi.todoService = TodoHTTPService(host: "http://cscc-todos.getsandbox.com")

	print("get all todos")
	//try! TodoApi.getTodos { (completion: HandlerTodos) in
	//    do {
	//        let todos = try completion()
	//        
	//        print(todos)
	//    } catch  {
	//        print("Error info: \(error)")
	//    }
	//}
	print("create a todo")
	//let todo = TodoModel()
	//todo.title = "Complete Assignment 4"
	//todo.body = "Assignment 4 is due May 10"
	//todo.priority = 2
	//todo.done = false
	//
	//try! TodoApi.createTodo(todo: todo) { (completion: HandlerTodo) in
	//    do {
	//        let todo = try completion()
	//        
	//        print(todo!)
	//    } catch  {
	//        print("Error info: \(error)")
	//    }
	//}
	print("get a single todo")
	//try! TodoApi.getTodo(id: "50fcdc7a-4c55-4f22-73b7-6c32ebd46d66") { (completion: HandlerTodo) in
	//    do {
	//        let todo = try completion()
	//        
	//        print(todo!)
	//    } catch  {
	//        print("Error info: \(error)")
	//    }
	//}
	print("update a todo")
	//try! TodoApi.getTodo(id: "50fcdc7a-4c55-4f22-73b7-6c32ebd46d66") { (completion: HandlerTodo) in
	//    do {
	//        let todo = try completion()
	//        
	//        todo!.done = true
	//        
	//        try! TodoApi.updateTodo(todo: todo!) { (completion: HandlerVoid) in
	//            do {
	//                try completion()
	//
	//            } catch  {
	//                print("Error info: \(error)")
	//            }
	//        }
	//    } catch  {
	//        print("Error info: \(error)")
	//    }
	//}
	print("delete a todo")
	//try! TodoApi.deleteTodo(id: "50fcdc7a-4c55-4f22-73b7-6c32ebd46d66") { (completion: HandlerVoid) in
	//    do {
	//        try completion()
	//
	//    } catch  {
	//        print("Error info: \(error)")
	//    }
	//}