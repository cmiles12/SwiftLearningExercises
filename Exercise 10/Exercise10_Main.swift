	import Foundation

	var matt: Owner? = Owner(name: "Matt")

	print(matt!.description)
	
// Adds pets to matt: a dog and cat

	matt?.addPet(pet: Dog(breed: "Greyhound", color: "fawn", age: 6, name: "Fido", owner: matt!))
	matt?.addPet(pet: Cat(breed: "Siamese", color: "white", age: 8, name: "Snowy", owner: matt!))
	
// Iterates over pets (giving both dog and cat)

	for pet in matt!.pets {

		print("\(pet.description)")

		pet.makeSound()
	}

	print(matt!.description)
	
// Deinitiates matt

	matt = nil