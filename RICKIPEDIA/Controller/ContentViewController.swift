//
//  ContentViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 19/06/21.
//

import Foundation
import UIKit
class ContentViewController: WelcomeViewController{
    @IBOutlet weak var factView: UIView!
    @IBOutlet weak var quizView1: UIView!
    @IBOutlet weak var factButton: UIButton!
    @IBOutlet weak var textView: UIView!
    
    @IBOutlet weak var quizButton: UIButton!
    override func viewDidLoad() {
        
        setupUI()
        
    }
    
    func setupUI(){
        
        factView.layer.cornerRadius = 30
        factView.layer.shadowOpacity = 0.5
        factView.layer.shadowColor = UIColor.white.cgColor
        factView.layer.shadowRadius = 20
        factView.layer.shadowOffset = .zero
        
        quizView1.layer.cornerRadius = 30
        quizView1.layer.shadowOpacity = 0.5
        quizView1.layer.shadowColor = UIColor.white.cgColor
        quizView1.layer.shadowRadius = 20
        quizView1.layer.shadowOffset = .zero
        
        textView.layer.cornerRadius = 30
        textView.layer.shadowOpacity = 0.5
        textView.layer.shadowColor = UIColor.white.cgColor
        textView.layer.shadowRadius = 25
        textView.layer.shadowOffset = .zero
        
        factButton.layer.cornerRadius = 30
        quizButton.layer.cornerRadius = 30
        
        
    }
    
    
    @IBAction func factsPressed(_ sender: UIButton) {
         
        performSegue(withIdentifier: "goTofacts", sender: self)
    }
    
    
    @IBAction func quizPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToQuiz", sender: self)
    }
    
}
