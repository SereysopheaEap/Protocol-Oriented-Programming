//: [Previous](@previous)

import Foundation

protocol Failure {
  func handleFailure(error: Error) -> String
}

/// - With Protocol Extension, We can provide the default implementation of methods by extending  Protocol.
/// - This will make them “optional”. So Types that conform to protocol doesn't need to provide their own implementation.
/// - In case Any Type needs their own implementation, they still can provide it.

extension Failure {
  func handleFailure(error: Error) -> String {
    return error.localizedDescription
  }
}

struct ServerFailure: Failure {
  func handleFailure(error: Error) -> String {
    return error.localizedDescription
  }
}

struct CacheFailure: Failure {}

print("All work")






