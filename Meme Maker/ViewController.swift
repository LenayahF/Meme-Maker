//
//  ViewController.swift
//  Meme Maker
//
//  Created by 11k on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
        
    var topArray:[CaptionOption] =  [CaptionOption(emoji:"😔", caption: "When you see that pricetag"), CaptionOption(emoji:"😭", caption: "When you see someone trip"), CaptionOption(emoji:"🫢", caption: "When they broke up last week, but you see them together again")]
    
    @IBOutlet weak var dragTopLabel: UILabel!
    var bottomArray:[CaptionOption] =
        [CaptionOption(emoji: "😔", caption: ""),CaptionOption(emoji: "😭", caption: ""), CaptionOption(emoji: "🫢", caption: "")]

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        topSegmentedControl.removeAllSegments()
        for choice in topArray{
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topArray.count, animated: false)
        }
        
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomArray{
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomArray.count, animated: false)
        }
        
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
        // Do any additional setup after loading the view.
      
    }
    
    
    @IBAction func changeOption(_ sender: UISegmentedControl) {
        
        topLabel.text = topArray[topSegmentedControl.selectedSegmentIndex].caption
        
        bottomLabel.text = bottomArray[bottomSegmentedControl.selectedSegmentIndex].caption
    }
    
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed
        {
            topLabel.center = sender.location(in: view)
        }
       // if sender.state == .changed
    }


}

