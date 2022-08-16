//
//  ViewController.swift
//  Destini-iOS13
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var qno = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
   @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
       let ch1 = storyBrain.getChoice1Text()
       let ch2 = storyBrain.getChoice2Text()
        choice1Button.setTitle(ch1, for: .normal)
        choice2Button.setTitle(ch2, for: .normal)
    }
    
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
                   qno = storyBrain.checkAnswer(userAnswer)
        storyBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
        
    }
    

}

