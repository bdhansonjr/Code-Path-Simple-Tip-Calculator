//
//  ViewController.swift
//  Code Path Simple Tip Calculator
//
//  Created by DrBDHJ on 12/30/15.
//  Copyright © 2015 DrBDHJ. All rights reserved.
//

import UIKit


var tipsValues = NSUserDefaults.standardUserDefaults()

//var subparTipValue = tipsValues.stringForKey("one")
//var averageTipValue = tipsValues.stringForKey("two")
//var superbTipValue = tipsValues.stringForKey("three")

var tipPercentages = [0.18, 0.2, 0.22]


class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    func editSegmentedControl() {
        // sets title of each segment to value that was entered from settings view.
        tipControl.setTitle(tipsValues.stringForKey("one")!+"%", forSegmentAtIndex: 0)
        tipControl.setTitle(tipsValues.stringForKey("two")!+"%", forSegmentAtIndex: 1)
        tipControl.setTitle(tipsValues.stringForKey("three")!+"%", forSegmentAtIndex: 2)
    }

// Methods below - Just comment for me
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        billField.becomeFirstResponder()
        
    }

//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        print("view will appear")
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
        
        
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear *")
        
        
        
        editSegmentedControl()
        
        print(tipsValues.stringForKey("one"))
        print(tipsValues.stringForKey("two"))
        print(tipsValues.stringForKey("three"))
        
        
        let doubleValue1 = NSString(string: tipsValues.stringForKey("one")!).doubleValue
        let doubleValue2 = NSString(string: tipsValues.stringForKey("two")!).doubleValue
        let doubleValue3 = NSString(string: tipsValues.stringForKey("three")!).doubleValue
        
        tipPercentages[0] = doubleValue1 / 100
        tipPercentages[1] = doubleValue2 / 100
        tipPercentages[2] = doubleValue3 / 100
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
//        let tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        
        var tip = billAmount * tipPercentage
        
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    
    
    
    
    
    
}
