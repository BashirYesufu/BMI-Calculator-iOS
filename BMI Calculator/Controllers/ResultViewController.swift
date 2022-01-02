//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by mac on 1/2/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue = "0.0"
    var bmiColor: UIColor?
    var bmiAdvice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bmiColor
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
