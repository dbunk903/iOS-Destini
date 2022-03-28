//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    let sb = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = sb.stories[0].title
        choice1Button.setTitle(sb.stories[0].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(sb.stories[0].choice2, for: UIControl.State.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        if userChoice == sb.stories[0].choice1{
            storyLabel.text = sb.stories[1].title
            choice1Button.setTitle(sb.stories[1].choice1, for: UIControl.State.normal)
            choice2Button.setTitle(sb.stories[1].choice2, for: UIControl.State.normal)
        }
        else{
            storyLabel.text = sb.stories[2].title
            choice1Button.setTitle(sb.stories[2].choice1, for: UIControl.State.normal)
            choice2Button.setTitle(sb.stories[2].choice2, for: UIControl.State.normal)
        }
    }
    
}


