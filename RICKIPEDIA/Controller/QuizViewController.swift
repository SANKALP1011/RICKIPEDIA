//
//  QuizViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 02/07/21.
//

import Foundation
import UIKit
class QuizViewController: WelcomeViewController{
    var quizBrain = QuizBrain()
    @IBOutlet weak var quizImageView: UIImageView!
    @IBOutlet weak var quizView: UIView!
    @IBOutlet weak var trueView: UIView!
    @IBOutlet weak var falseView: UIView!
    
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!

    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        
        BetterUI()
        updateUI()
        
    }
    
    func BetterUI(){
        
        quizView.layer.cornerRadius = 30
        quizView.layer.shadowOpacity = 0.5
        quizView.layer.shadowColor = UIColor.white.cgColor
        quizView.layer.shadowRadius = 20
        quizView.layer.shadowOffset = .zero
        
        trueView.layer.cornerRadius = 30
        trueView.layer.shadowOpacity = 0.5
        trueView.layer.shadowColor = UIColor.white.cgColor
        trueView.layer.shadowRadius = 20
        trueView.layer.shadowOffset = .zero
        
        falseView.layer.cornerRadius = 30
        falseView.layer.shadowOpacity = 0.5
        falseView.layer.shadowColor = UIColor.white.cgColor
        falseView.layer.shadowRadius = 20
        falseView.layer.shadowOffset = .zero
        
        trueButton.layer.cornerRadius = 30
        falseButton.layer.cornerRadius = 30
        
    }

        

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userIsRight = quizBrain.getAnswer(userChoice: userAnswer)
        if userIsRight{
            sender.backgroundColor = UIColor.green
            quizBrain.nextQuestion()
            }
        else{
            sender.backgroundColor = UIColor.red
            quizBrain.nextQuestion()
        }
        quizBrain.getQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector( updateUI ), userInfo: nil, repeats: false)
    }
    @objc func updateUI()
    {
        quizLabel.text = quizBrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }



}
