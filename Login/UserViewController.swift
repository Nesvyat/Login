//
//  ViewController.swift
//  Login
//
//  Created by MacBook Pro on 16.08.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = user
                
    }
    private func showAlert(title: String, message: String, textField: UITextField? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func loginButton() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(title: "Invalide login and password", message: "Please correct login and password", textField: passwordTF)
         return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }

    
        @IBAction func forgotUserButton(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(title: "OOOPS", message: "Your name is \(user) 😂 ")
            : showAlert(title: "OOOPS", message: "Your password is \(password) 😂" )
        
    }
    
    @IBAction  func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
  
    }

