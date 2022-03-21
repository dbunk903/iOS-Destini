//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let stories = [Story(t: "You see a fork in the road.",
                         c1: "Take a left.",
                         c2: "Take a right."),
                   Story(t: "you see a tiger", c1: "Shout for help", c2: "Play Dead"),
                   Story(t: "You find a Treasure Chest", c1: "Open it", c2: "Check for Traps")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(stories[0].choice2, for: UIControl.State.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
}


