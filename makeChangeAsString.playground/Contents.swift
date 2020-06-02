import UIKit

func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {
    
    if fromAmount < withCost {
        
        let paymentDue = withCost - fromAmount
        
        var change: Int = Int(paymentDue * 100)
        let dollars: Int = change / 100
        change = change % 100
        let quarters: Int = change / 25
        change = change % 25
        let dimes: Int = change / 10
        change = change % 10
        let nickels: Int = change / 5
        change = change % 5
        let pennies: Int = change / 1
        
        return ("You didn't pay enough! You still owe $\(paymentDue). That is \(dollars) dollar, \(quarters) quarter, \(dimes) dime, \(nickels) nickels and \(pennies) pennies.")
    }
    
    let changeDue = fromAmount - withCost
    
    var change: Int = Int(changeDue * 100)
    let dollars: Int = change / 100
    change = change % 100
    let quarters: Int = change / 25
    change = change % 25
    let dimes: Int = change / 10
    change = change % 10
    let nickels: Int = change / 5
    change = change % 5
    let pennies: Int = change / 1
    
    
    return "Your change is $\(changeDue). That is \(dollars) dollars, \(quarters) quarters, \(dimes) dime, \(nickels) nickels and \(pennies) pennies."
}

// Test Cases
makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
