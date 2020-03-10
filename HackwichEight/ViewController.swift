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
    
    @IBOutlet weak var OneHundredOne: UILabel!
    
    @IBOutlet weak var OneHundredTwo: UILabel!
    
    @IBOutlet weak var One: UILabel!
    
    @IBOutlet weak var Slider: UISlider!
    
    var currentValue = 0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

        @IBAction func Button(_ sender: Any) {

        let Alert = UIAlertController(title: "Hello World", message: message, preferredStyle:.alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        Alert.addAction(action)
        
        present(Alert, animated: true, completion: nil)
    }
    @IBAction func SliderMoved(_ sender: Any) {
        print("The value of the slider is:\(Slider.value)")
        currentValue = lroundf(Slider.value)
    }
}

