//
//  SignViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 19/06/21.
//

import Foundation
import UIKit
import Firebase
class SignViewController: WelcomeViewController{
    
    @IBOutlet weak var signView: UIView!
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var yourEmailText: UITextField!
    @IBOutlet weak var yourPasswordText: UITextField!
    @IBOutlet weak var emailImage: UIImageView!
    @IBOutlet weak var passImage: UIImageView!
    
    override func viewDidLoad() {
        setupUI()
    }
    
    private func setupUI(){
        signView.layer.cornerRadius = 30
        signView.layer.shadowOpacity = 0.5
        signView.layer.shadowColor = UIColor.white.cgColor
        signView.layer.shadowRadius = 20
        signView.layer.shadowOffset = .zero
        
        detailsView.layer.cornerRadius = 30
        detailsView.layer.shadowOpacity = 0.7
        detailsView.layer.shadowColor = UIColor.white.cgColor
        detailsView.layer.shadowRadius = 20
        detailsView.layer.shadowOffset = .zero
        
        yourEmailText.layer.cornerRadius = 25
        yourEmailText.layer.borderColor = UIColor.gray.cgColor
        yourEmailText.layer.borderWidth = 0.2
        yourEmailText.clipsToBounds = true
        
        yourPasswordText.layer.cornerRadius = 25
        yourPasswordText.layer.borderColor = UIColor.gray.cgColor
        yourPasswordText.layer.borderWidth = 0.2
        yourPasswordText.clipsToBounds = true
        
        signButton.layer.cornerRadius = 30
        emailImage.layer.cornerRadius = 20
        passImage.layer.cornerRadius = 20
        
    }
    
    
    
    @IBAction func signPressed(_ sender: UIButton) {
        if let email = yourEmailText.text , let password = yourPasswordText.text{
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let e = error
            {
                print(e.localizedDescription)
            }
            else{
                self.performSegue(withIdentifier: "goToContents", sender: self)
            }
        }
        }
    }
    
}
