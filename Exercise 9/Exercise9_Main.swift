	import Foundation

	var matt: Owner? = Owner(name: "Matt")

	print(matt!.description)

// Gives matt a dog and cat
	
	matt!.addDog(dog: Dog(breed: "Greyhound", color: "fawn", age: 6, name: "Fido", owner: matt!))
	matt!.addCat(cat: Cat(breed: "Siamese", color: "white", age: 8, name: "Snowy"))
	
// If there is a dog/cat at the given index, print its description

	if let dog = matt?[0, .Dog]?.0 {
		
		print("\(dog.description)")
	}

	if let cat = matt?[0, .Cat]?.1 {

		print("\(cat.description)")
	}

	print(matt!.description)

	matt = nil