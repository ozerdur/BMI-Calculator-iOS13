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

    var calculatorBrain = CalculatorBrain()

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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        
    }
    
}

