//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let example = Story(t: "You see a fork in the road.",
                        c1: "Take a left.",
                        c2: "Take a right.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = example.title
        choice1Button.setTitle(example.choice1, for: UIControl.State.normal)
        choice2Button.setTitle(example.choice2, for: UIControl.State.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
}


