//
//  ViewController.swift
//  Prework
//
//  Created by rebecca yohannes on 2/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentages
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f)", tip)
        //Update Total AMount
        totalLabel.text = String(format: "$%.2f)", total)
    }
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
                super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

