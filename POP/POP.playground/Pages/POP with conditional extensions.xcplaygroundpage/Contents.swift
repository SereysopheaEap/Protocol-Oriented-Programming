//: [Previous](@previous)

import UIKit

protocol Failure {
  func handleFailure(error: Error)
}

/// This protocol provides the default implementation to any Type that conform to UIViewController only.

extension Failure where Self: UIViewController {
  func handleFailure(error: Error) {
    let alert = UIAlertController(title: "Error",
                                  message: error.localizedDescription,
                                  preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
    alert.addAction(action)
    present(alert, animated: true)
  }
}


/// This below struct needs to provide implementation of Failure
struct ServerFailure: Failure {
  func handleFailure(error: Error) {
    
  }
}

/// This below class doens't need to provide the implementation of Failure because
/// the Failure protocol provided default implementation to any Type that inherit from UIViewController
class LoginViewController: UIViewController, Failure {}

print("It works ...")
