//: [Previous](@previous)

import Foundation

protocol A {
  func like()
  // other methods
}

extension A {
  func like() {
    print("Like A")
  }
}

protocol B {
  func like()
  // other methods
}

extension B {
  func like() {
    print("Like B")
  }
}

/*
/// With this below class, we will get a compilation error with refer to type 'MS' doesn't conform to protocol 'A' and 'B' - multiple matching functions named 'like().
  struct MS: A, B {
    
  }
*/

/// To solve this probleme, 'MS' have to provide the implementation of the method to the type
struct MS: A, B {
  func like() {
    print("Like SP")
  }
}

let ms = MS()
ms.like()
