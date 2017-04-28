	import Foundation

	var teller: Teller? = Teller(name: "Annie")
	teller?.auditDelegate = AuditDefaultDelegate()
	
// Does actions with customer; matt and customer: sam

	teller?.handle(customer: Customer(name: "Matt"))
	do {
		try teller?.openCheckingAccount()
		
		let account = teller!.customer!.checking!
		
		try teller?.credit(amount: 100.00, account: account)
		print(account.description)
		
		try teller?.debit(amount: 99.00, account: account)
		print(account.description)
		
		try teller?.done()
		
	} catch TransactionError.NoCustomer {
		print("ERROR: teller is not handling a customer")
	} catch TransactionError.InsufficientFunds(let balance, let debiting) {
		print("ERROR: transaction error: debiting \(debiting), balance = \(balance)")
	}
	
	

	teller?.handle(customer: Customer(name: "Sam"))
	do {
		try teller?.openSavingsAccount()
		
		let account = teller!.customer!.savings!
		
		try teller?.debit(amount: 100.00, account: account)
		print(account.description)
		
		try teller?.credit(amount: 600.00, account: account)
		print(account.description)
		
		if let savings = account as? SavingsAccount {
			
			savings.applyInterest()
		}
		print(account.description)
		
		try teller?.done()
		
	} catch TransactionError.NoCustomer {
		print("ERROR: teller is not handling a customer")
	} catch TransactionError.InsufficientFunds(let balance, let debiting) {
		print("ERROR: transaction error: debiting \(debiting), balance = \(balance)")
	}

	teller = nil