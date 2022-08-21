//
//  InfoViewController.swift
//  Login
//
//  Created by MacBook Pro on 20.08.2022.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet var infoLabel: UILabel!
    
    
    var user: User!
    
    private let primaryColor = UIColor(red: 100/255, green: 190/100, blue: 200/170, alpha: 1)
        private let secondaryColor = UIColor(red: 150/115, green: 100/155, blue: 185/89, alpha: 1)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.source as? HobbyViewController else { return }
        infoVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        infoLabel.text = user.login
        
    }
   
    

}
