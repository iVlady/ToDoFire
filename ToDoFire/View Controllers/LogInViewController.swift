//
//  ViewController.swift
//  ToDoFire
//
//  Created by Vlad Vinogrotskiy on 22.09.2021.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var toDoFireLabel: UILabel!
    @IBOutlet weak var userDoesNotExistLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(kdDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(kdDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        
    }
    
    @objc func kdDidShow(notification: Notification) {
        guard let userInfo = notification.userInfo else { return }
        let kbFrameSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        (self.view as! UIScrollView).contentSize = CGSize(width: self.view.bounds.size.width, height: self.view.bounds.size.height + kbFrameSize.height)
    }
    
    @objc func kdDidHide() {
        (self.view as! UIScrollView).contentSize = CGSize(width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
    }
    

}

extension LogInViewController{
    
}

