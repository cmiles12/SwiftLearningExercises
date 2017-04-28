	import Foundation

// Creates some simple enums and a struct to use during the main program
	
	public enum PetType {
		case Dog
		case Cat
	}

	public enum Loudness {
		case Soft
		case Medium
		case Very
	}

	public enum When {
		case AM
		case PM
	}

	public struct Mouse {
		
		internal var color: String
		
		init(color: String) {
			
			self.color = color
		}
	}