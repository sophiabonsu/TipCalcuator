//
//  ViewController.swift
//  Prework
//
//  Created Sophia Bonsu on 12/21/20.
//

import UIKit
import SwiftUI


class ViewController: UIViewController {
   
    
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var TipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

        
        
           }
    
    @IBAction func onTap(_ sender: Any) {
        //print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //1. Get the initial bill amount and calculate the tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.2]
        
        
        //2. Calculate the total cost

        let tip = bill*tipPercentage[tipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        //3. Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
}

