//
//  ViewController.swift
//  MemeMaker
//
//  Created by Alexa Papandreou on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var shareButton: UIButton!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coolChoice = CaptionChoice(emoji: "🕶", caption: "You know what's cool?")
        let happyChoice = CaptionChoice(emoji: "😁", caption: "You know what makes me happy?")
        let loveChoice = CaptionChoice(emoji: "💗", caption: "You know what I love?")
        topChoices = [coolChoice, happyChoice, loveChoice]
        topSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedControl.selectedSegmentIndex = 0
        
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs driving cars")
        let monkeyChoice = CaptionChoice(emoji: "🐒", caption: "Monkeys being funky")
        let catChoice = CaptionChoice(emoji: "🐱", caption: "Cats wearing hats")
        bottomChoices = [dogChoice, monkeyChoice, catChoice]
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    func updateLabels(){
        let topChoice = topChoices[topSegmentedControl.selectedSegmentIndex]
        let bottomChoice = bottomChoices[bottomSegmentedControl.selectedSegmentIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
    
    
    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
    }
    
}

