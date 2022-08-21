//
//  WishesViewController.swift
//  Login
//
//  Created by MacBook Pro on 20.08.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    @IBOutlet var hobbyLabel: UILabel!
    
    var user: User!
    
    private let primaryColor = UIColor(red: 100/55, green: 55/100, blue: 170/170, alpha: 1)
        private let secondaryColor = UIColor(red: 150/55, green: 100/155, blue: 100/89, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
      
    }
    
    
    

}
