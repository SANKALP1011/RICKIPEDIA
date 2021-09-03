//
//  ViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 19/06/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var MainSignView: UIView!
    @IBOutlet weak var MainlogView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI(){
        
        MainSignView.layer.cornerRadius = 30
        MainSignView.layer.shadowOpacity = 0.5
        MainSignView.layer.shadowColor = UIColor.white.cgColor
        MainSignView.layer.shadowRadius = 20
        MainSignView.layer.shadowOffset = .zero
        
        MainlogView.layer.cornerRadius = 30
        MainlogView.layer.shadowOpacity = 0.5
        MainlogView.layer.shadowColor = UIColor.white.cgColor
        MainlogView.layer.shadowRadius = 20
        MainlogView.layer.shadowOffset = .zero
    }


    @IBAction func signInPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSign", sender: self)
    }
    
    
    @IBAction func logInPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLog", sender: self)
    }
    
}

