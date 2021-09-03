//
//  LogViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 19/06/21.
//

import Foundation
import UIKit
import Firebase
class LogViewController: WelcomeViewController{
    
    @IBOutlet weak var logView: UIView!
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet weak var detailsLogView: UIView!
    @IBOutlet weak var yourEmailText: UITextField!
    @IBOutlet weak var yourPasswordText: UITextField!
    @IBOutlet weak var emailimage1: UIImageView!
    @IBOutlet weak var passImage1: UIImageView!
    
    override func viewDidLoad() {
        setupUI()   
    }
    
    private func setupUI(){
        
        logView.layer.cornerRadius = 30
        logView.layer.shadowOpacity = 0.5
        logView.layer.shadowColor = UIColor.white.cgColor
        logView.layer.shadowRadius = 20
        logView.layer.shadowOffset = .zero
        
        detailsLogView.layer.cornerRadius = 30
        detailsLogView.layer.shadowOpacity = 0.7
        detailsLogView.layer.shadowColor = UIColor.white.cgColor
        detailsLogView.layer.shadowRadius = 20
        detailsLogView.layer.shadowOffset = .zero
        
        yourEmailText.layer.cornerRadius = 25
        yourEmailText.layer.borderColor = UIColor.black.cgColor
        yourEmailText.layer.borderWidth = 0.2
        yourEmailText.clipsToBounds = true
        
        yourPasswordText.layer.cornerRadius = 25
        yourPasswordText.layer.borderColor = UIColor.gray.cgColor
        yourPasswordText.layer.borderWidth = 0.2
        yourPasswordText.clipsToBounds = true
        
        logButton.layer.cornerRadius = 30
        emailimage1.layer.cornerRadius = 20
        passImage1.layer.cornerRadius = 20
        
    }
    
    
    @IBAction func logPressed(_ sender: UIButton) {
        if let email = yourEmailText.text , let password = yourPasswordText.text{
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            if let e = error{
                print(e.localizedDescription)
            }
            else{
                self?.performSegue(withIdentifier: "goToContents", sender: self)
            }
        }
        
    }
    
    
    
    
    
    
}
}
