//: [Previous](@previous)

import Foundation

protocol Human {
//  func eat()
}

extension Human {
  func eat() {
    print("Human eat rice, bread, meat and vegetable.")
  }
}

struct Baby: Human {
  func eat() {
    print("Baby eat milk")
  }
}

/// The test is about creating a variable with Prtocol type with Subclass Type conform to the Protocol

// Test case [1]: With  method [func eat()] in the protocol
let p: Human = Baby()
p.eat() // Result: "Baby eat milk"

/*
// Test case [2]: remove the method [func eat()] in the protocol
let p: Human = Baby()
p.eat() // Result: "Human eat rice, bread, meat, vegetable"
*/

/// Sumarized:
/// 1. When method declaration exists in the protocol and protocol provides default implementation:
///    The method is overridden in the Sub Type implementation as the struct Baby above.
///    The correct implementation of the method is invoked at runtime, regardless of the type of the variable.
/// 2. When method declaration doesn’t exist in the protocol and provide extension method to a Sub Type:
///    The Sub Type is not able to override.
///    That is why the implementation of a called method depends on the type of the variable.
