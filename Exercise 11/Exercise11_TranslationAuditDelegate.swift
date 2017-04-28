	import Foundation
	
// Creates a blueprint TransactionAuditDelegate

	public protocol TransactionAuditDelegate {
		
		func willPerform(what: Action, customer: Customer, account: Account?)
		
		func performing(what: Action, customer: Customer, account: Account?)
		
		func didPerform(what: Action, customer: Customer, account: Account?)
	}