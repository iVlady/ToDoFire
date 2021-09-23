//
//  ViewController.swift
//  ToDoFire
//
//  Created by Vlad Vinogrotskiy on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toDoFireLabel: UILabel!
    @IBOutlet weak var userDoesNotExistLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoFireLabelSetup()
        userDoesNotExistLabelSetup()
        emailTextFieldSetup()
        passwordTextFieldSetup()
        logInButtonSetup()
        registerButtonSetup()
    }
    
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
    }
    

}

extension ViewController{
    
    func toDoFireLabelSetup() {
        toDoFireLabel.text = "To Do FIRE"
        toDoFireLabel.textColor = .white
        toDoFireLabel.font = UIFont(name: "Rockwell", size: 40)
        toDoFireLabel.textAlignment = .center
    }
    
    func userDoesNotExistLabelSetup() {
        userDoesNotExistLabel.text = "User does not exist"
        userDoesNotExistLabel.textColor = .red
        userDoesNotExistLabel.font = UIFont(name: "Rockwell", size: 18)
        userDoesNotExistLabel.textAlignment = .center
    }
    
    func emailTextFieldSetup() {
        emailTextField.placeholder = "Email"
        emailTextField.textAlignment = .center
        emailTextField.font = UIFont(name: "Rockwell", size: 17)
    }
    
    func passwordTextFieldSetup() {
        passwordTextField.placeholder = "Password"
        passwordTextField.textAlignment = .center
        passwordTextField.font = UIFont(name: "Rockwell", size: 17)
        passwordTextField.isSecureTextEntry = true
    }
    
    func logInButtonSetup() {
        logInButton.titleLabel?.text = "Log In"
        logInButton.titleLabel?.textColor = .white
        logInButton.titleLabel?.font = UIFont(name: "Rockwell", size: 23)
        logInButton.clipsToBounds = true
        logInButton.layer.cornerRadius = 10
    }
    
    func registerButtonSetup() {
        registerButton.titleLabel?.text = "Register"
        registerButton.titleLabel?.textColor = .white
        registerButton.titleLabel?.font = UIFont(name: "Rockwell", size: 23)
        registerButton.clipsToBounds = true
        registerButton.layer.cornerRadius = 10
    }
}

