	import Foundation
	
// Creates a BaseAccount class

	public class BaseAccount {
		
		public var balance = 0.0
		
		public unowned var customer: Customer

		public init(customer: Customer) {
			
			self.customer = customer
		}
		
	// If the new balance will be less than 0, then throw exception	
	
		public func debit(amount: Double) throws {
			
			guard (balance - amount) >= 0 else {
				
				throw TransactionError.InsufficientFunds(balance: balance, debiting: amount)
			}
			
			balance -= amount
		}
		
		public func credit(amount: Double) {
			
			balance += amount
		}
	}