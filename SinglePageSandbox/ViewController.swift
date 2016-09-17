//
//  ViewController.swift
//  SinglePageSandbox
//
//  Created by Pondd on 9/17/16.
//  Copyright © 2016 Pondd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var TitleLable: UILabel!
    @IBOutlet weak var diceFace: UILabel!
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("this is loading")
        textField.resignFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PressButton(_ sender: AnyObject) {
        let diceRoll = Int(arc4random_uniform(6) + 1)
        diceFace.text = "\(diceRoll)"
      
    }
    @IBAction func sliderMoved(_ sender: UISlider) {
        sliderLabel.text = "\(sender.value)"
    }
   

    @IBAction func buttonsPressed(_ sender: AnyObject) {
        print(sender.tag)
    }

}

