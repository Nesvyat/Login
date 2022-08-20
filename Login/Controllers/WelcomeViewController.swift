//
//  WelcomeViewController.swift
//  Login
//
//  Created by MacBook Pro on 16.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
   
    
    var user = ""
     
    
    
    private let primaryColor = UIColor(red: 210/255, green: 190/200, blue: 245/170, alpha: 1)
        private let secondaryColor = UIColor(red: 190/215, green: 200/155, blue: 234/89, alpha: 1)
    
    
 override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome \(user)!"

 }
}

extension UIView {
    func addVerticalGradientLayer (topColor:UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
 

