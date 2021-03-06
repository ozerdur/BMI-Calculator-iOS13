//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heighLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!


    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        
        let heightValue = String(format: "%.2f", sender.value)
        heighLabel.text = "\(heightValue)m"
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        
        let weightValue = Int(sender.value)
        weightLabel.text = "\(weightValue)Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi =  weight / pow(height,2)
    }
    
}

