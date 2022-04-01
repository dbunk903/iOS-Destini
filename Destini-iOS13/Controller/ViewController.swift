//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var sb = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        sb.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
    
    func updateUI(){
        storyLabel.text = sb.getStoryTitle()
        choice1Button.setTitle(sb.getChoice1(), for: .normal)
        choice2Button.setTitle(sb.getChoice2(), for: .normal)
    }
}


