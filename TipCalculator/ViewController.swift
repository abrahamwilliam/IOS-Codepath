//
//  ViewController.swift
//  TipCalculator
//
//  Created by LinuxPlus on 12/24/18.
//  Copyright © 2018 LinuxPlus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var percentTip: UISegmentedControl!
    @IBOutlet weak var billText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tippercentages=[0.18,0.20,0.30]
        
        
        let bill=Double(billText.text!) ?? 0
        let tip=bill * tippercentages[percentTip.selectedSegmentIndex]
        let total=bill + tip
        tipLabel.text=String(format: "$%.2f", Double(tip))
        totalLabel.text=String(format: "$%.2f", Double(total))
        print("total is ",total)
        
    }
    
}

