//
//  ViewController.swift
//  FirebaseDemoApp
//
//  Created by Rave Training on 2/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameInputField: UITextField!
    @IBOutlet weak var passwordInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButtonReleased(_ sender: UIButton) {
        performSegue(withIdentifier: "toUserView", sender: self)
    }
    
    @IBAction func createUserButtonReleased(_ sender: UIButton) {
    }
    
    @IBAction func useAsGuestButtonReleased(_ sender: UIButton) {
    }
    
}

