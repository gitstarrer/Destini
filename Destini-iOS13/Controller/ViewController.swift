//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
   
   
    override func viewDidLoad() {
        storyLabel.text = storyBrain.quiz[storyBrain.stage].title
        choice1Button.setTitle(storyBrain.quiz[storyBrain.stage].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.quiz[storyBrain.stage].choice2, for: .normal)
        super.viewDidLoad()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        updateUI(choice)
    }
    
    func updateUI(_ choice : String){
        let nextStoryNumber = storyBrain.getNextStage(choice)
        storyLabel.text = storyBrain.quiz[nextStoryNumber].title
        choice1Button.setTitle(storyBrain.quiz[nextStoryNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.quiz[nextStoryNumber].choice2, for: .normal)
        storyBrain.stage = nextStoryNumber
    }
}

