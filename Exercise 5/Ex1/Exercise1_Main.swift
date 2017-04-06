import Foundation

let billAmount = 87.56
let tipPercentage = 0.2
let minTipAmount = 3.0

var tipAmount = getTipAmount(billAmount: billAmount, tipPercentage: tipPercentage, minTipAmount: minTipAmount)
let totalAmount = getTotalAmount(billAmount: billAmount, tipAmount: tipAmount)

// use string interpolation to get the correct representation of the dollar about
let billAmountStr = getFinalString(amount: billAmount, decimal: decimalPlaceString(amount: decimalPlaceAsInt(amount: billAmount)))
let tipAmountStr = getFinalString(amount: tipAmount, decimal: decimalPlaceString(amount: decimalPlaceAsInt(amount: tipAmount)))
let totalAmountStr = getFinalString(amount: totalAmount, decimal: decimalPlaceString(amount: decimalPlaceAsInt(amount: totalAmount)))

// print the values
print("What is the bill? $\(billAmountStr)")
print("What is the tip percentage? \(Int(tipPercentage * 100))")
print("The tip is $\(tipAmountStr)")
print("The total is $\(totalAmountStr)")