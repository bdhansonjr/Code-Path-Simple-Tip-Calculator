//
//  SettingsViewController.swift
//  Code Path Simple Tip Calculator
//
//  Created by DrBDHJ on 12/30/15.
//  Copyright © 2015 DrBDHJ. All rights reserved.
//

import UIKit

// This is my SettingsViewController that I am using to change the default tip values that are used in the segmented controller for the UIViewController.
class SettingsViewController: UIViewController {

    @IBOutlet weak var subparTipField: UITextField!
    
    @IBOutlet weak var averageTipField: UITextField!
    
    @IBOutlet weak var superbTipField: UITextField!
    
    let tipsValues = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        if subparTipField.text == nil {
//            subparTipField.text = "18"
//        }
//        
//        if averageTipField.text == nil {
//            averageTipField.text = "20"
//        }
//        
//        if superbTipField.text == nil {
//            superbTipField.text = "22"
//        }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("view will disappear222")
//        
//    }
    
    
    
    
// This Action occurs when the "Set subpar tip" button is pressed on this view.
    @IBAction func setSubparTipButton(sender: AnyObject) {
        tipsValues.setObject(subparTipField.text, forKey: "one")
//        NSUserDefaults.standardUserDefaults().synchronize()
//        tipsValues.synchronize()
    }
// This Action occurs when the "Set average tip" button is pressed on this view.
    @IBAction func setAverageTipButton(sender: AnyObject) {
        tipsValues.setObject(averageTipField.text, forKey: "two")
//        NSUserDefaults.standardUserDefaults().synchronize()
//        tipsValues.synchronize()
    }
// This Action occurs when the "Set superb tip" button is pressed on this view.
    @IBAction func setSuperbTipButton(sender: AnyObject) {
        tipsValues.setObject(superbTipField.text, forKey: "three")
//        NSUserDefaults.standardUserDefaults().synchronize()
//        tipsValues.synchronize()
    }
    
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        print("view will appear111")
//    }
    
    



    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
