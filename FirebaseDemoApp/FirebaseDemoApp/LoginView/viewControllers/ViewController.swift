//
//  ViewController.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameInputField: UITextField!
    @IBOutlet weak var passwordInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        errorLabel.text = ""
    }

    @IBAction func signInButtonReleased(_ sender: UIButton) {
        guard let email = usernameInputField.text else { return }
        guard let password = passwordInputField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                        if let e = error {
                            self.errorLabel.text = "Make an account bruh"
                            print(e)
                        } else {
                            self.performSegue(withIdentifier: "toUserView", sender: self)
                        }
                    }
    }
    
    @IBAction func createUserButtonReleased(_ sender: UIButton) {
        guard let email = usernameInputField.text else { return }
        guard let password = passwordInputField.text else { return }
        
        if isValidEmail(testStr: email) && password.count >= 8 {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                            if let e = error {
                                print(e)
                            } else {
                                //Navigate to the ChatViewController
                                self.performSegue(withIdentifier: "toUserView", sender: self)
                            }
                        }
        } else {
            self.errorLabel.text = "Not a legit email/pass combo bruh"
        }
    }
    
    @IBAction func useAsGuestButtonReleased(_ sender: UIButton) {
        performSegue(withIdentifier: "toUserView", sender: self)
    }
    
    func isValidEmail(testStr:String) -> Bool {

        print("validate emailId: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result

    }
}

