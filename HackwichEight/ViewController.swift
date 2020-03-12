//
//  ViewController.swift
//  HackwichEight
//
//  Created by CM Student on 3/10/20.
//  Copyright © 2020 JKresnak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SlideText: UILabel!
    
    @IBOutlet weak var OneHundredTwo: UILabel!
    
    @IBOutlet weak var Zero: UILabel!
    
    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var TargetValueLabel: UILabel!
    
    var currentValue: Int = 0
    
    //HW8 Part 3 Part 2
   
    var TargetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        currentValue = lroundf(Slider.value)
        TargetValue =  Int.random(in: 0...100)
        
        self.SlideText.text = "Get as close as possible to:"
        self.OneHundredTwo.text = "100"
        self.Zero.text = "0"
        
    }

    @IBAction func Button(_ sender: Any) {
    
        let Message = "The current slider value is: \(currentValue)" + "\n Your Target value is: \(TargetValue)"
            
        let Alert = UIAlertController(title: "Hello World", message: Message, preferredStyle:.alert)
        
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        Alert.addAction(action)
        
        present(Alert, animated: true, completion: nil)
    
        StartNewRound()
    }
    
    
    @IBAction func SliderMoved(_ sender: Any) {
        print("The value of the slider is:\(Slider.value)")
        currentValue = lroundf(Slider.value)
    }
    
    func StartNewRound(){
    
    TargetValue = Int.random(in: 0...100)
    //currentValue = 1roundf(Slider.value)
 
        //problem set 1
        func updateTargetLabel(){
    
            self.TargetValueLabel.text = String(TargetValue)
    
        }
    }
    
}

