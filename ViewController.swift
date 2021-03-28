//
//  ViewController.swift
//  Midterm
//
//  Created by s on 03/27/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var revenue: UITextField!
    @IBOutlet weak var expense: UITextField!
    
    @IBOutlet weak var liability: UILabel!
    @IBOutlet weak var seLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bg()
    }
    
    @IBOutlet weak var taxButton: UIButton!
    @IBOutlet weak var seButton: UIButton!

    @IBAction func changeLanguage(sender: UIButton) {
        
        switch sender {
        case taxButton:
            if let amountText = revenue.text {
                let amount = Double(amountText) ?? 0.0
                
                if let expenseText = expense.text {
                    let expenses = Double(expenseText) ?? 0.0
                    
                    let profit = amount - expenses
                    
                    if (profit < 9875.0) {
                        let perc = 0.10
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                    };
                    if (profit >= 9875.0 && profit <= 40125.0) {
                        let perc = 0.12
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                        
                    }
                    if (profit >= 40125.0 && profit <= 85525.0) {
                        let perc = 0.22
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                    }
                    if (profit >= 85525.0 && profit <= 163300.0) {
                        let perc = 0.24
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                    }
                    if (profit >= 163300.0 && profit <= 207350.0) {
                        let perc = 0.32
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                    }
                    if (profit >= 207350.0  && profit <= 518400.0) {
                        let perc = 0.35
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                    }
                    if (profit > 518400.0)  {
                        let perc = 0.37
                        
                        liability.text = String(format: "$%.2f",  ((profit * perc)))
                        
                        revenue.text = ""
                        expense.text = ""
                    }
                }
            }
        case seButton:
            if let amountText = revenue.text {
                let amount = Double(amountText) ?? 0.0
                
                if let expenseText = expense.text {
                    let expenses = Double(expenseText) ?? 0.0
                    
                    let profit = amount - expenses
                    
                    seLabel.text = String(format: "$%.2f", (profit * 0.153))
                }
            }
        default:
            break
        }
    }
    
    func bg() {
      view.backgroundColor = .darkGray
    }
}

