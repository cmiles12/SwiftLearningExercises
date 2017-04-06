import Foundation

let billAmount = 32.65
let tipPercentage = 0.2
let minTipAmount = 3.0

let initialTipAmount = billAmount * tipPercentage

	// If the initialTipAmount is too low, the default $3 is set

var tipAmount = (initialTipAmount < minTipAmount) ? minTipAmount : initialTipAmount

let totalAmount = billAmount + tipAmount

	// Takes the decimal part/remainder w/ .truncatingRemainder(dividingBy: 1.0) and then gets two places w/ * 100

let billAmountDecimal =    Int(billAmount.truncatingRemainder(dividingBy: 1.0) * 100)
let tipAmountDecimal =     Int(tipAmount.truncatingRemainder(dividingBy: 1.0) * 100)
let totalAmountDecimal =   Int(totalAmount.truncatingRemainder(dividingBy: 1.0) * 100)

	// Formats decimal: Adds 0-2 0's depending on num of cols rawDecimals takes

let billAmountDecimalStr = billAmountDecimal == 0 ? "00" : billAmountDecimal < 10 ? "0\(billAmountDecimal)" : "\(billAmountDecimal)"
let tipAmountDecimalStr = tipAmountDecimal == 0 ? "00" : tipAmountDecimal < 10 ? "0\(tipAmountDecimal)" : "\(tipAmountDecimal)"
let totalAmountDecimalStr = totalAmountDecimal == 0 ? "00" : totalAmountDecimal < 10 ? "0\(totalAmountDecimal)" : "\(totalAmountDecimal)"

	// Formats total number: Adds Int base amount (no decimal) and decimalStr

let billAmountStr = "\(Int(billAmount)).\(billAmountDecimalStr)"
let tipAmountStr = "\(Int(tipAmount)).\(tipAmountDecimalStr)"
let totalAmountStr = "\(Int(totalAmount)).\(totalAmountDecimalStr)"

	// Reads data

print("What is the bill? $\(billAmountStr)")
print("What is the tip percentage? \(Int(tipPercentage * 100))")
print("The tip is $\(tipAmountStr)")
print("The total is $\(totalAmountStr)")
