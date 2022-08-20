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
    
    //private let user = "1"
    //private let password = "1"
    
    private let user = User.creationUser()
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
       // welcomeVC.user = user.login
                
    //}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let tabBarController = segue.destination as? UITabBarController else { return}
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.login
            }  else if let navigationVC = viewController as? UINavigationController {
                guard let infoViewController = navigationVC.topViewController as? InfoViewController else { return }
                infoViewController.user = user
                    
                    
                    
                }
                
                    
                }
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
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(title: "Invalide login and password", message: "Please correct login and password", textField: passwordTF)
         return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }

    
        @IBAction func forgotUserButton(_ sender: UIButton) {
            sender.tag == 0
            ? showAlert(title: "OOOPS", message: "Your name is \(user) 😂 ")
            : showAlert(title: "OOOPS", message: "Your password is \(user.password) 😂" )
        
    }
    
    @IBAction  func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
  
    }

