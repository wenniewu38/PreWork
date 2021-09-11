//
//  ViewController.swift
//  PreWork
//
//  Created by ivan on 2021/9/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var peopleControl: UISlider!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var perpersonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func peopleValue(_ sender: UISlider) {
        peopleLabel.text = String(Int(peopleControl.value))
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPersentages = [0.15, 0.2, 0.25]
        let tip = bill * tipPersentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let people = Int(peopleControl.value)
        let priceperperson = total / Double(people)
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perpersonLabel.text = String(format: "$%.2f", priceperperson)
    }
    
}

