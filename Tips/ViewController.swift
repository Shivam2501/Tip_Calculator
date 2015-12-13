//
//  ViewController.swift
//  Tips
//
//  Created by Shivam Bharuka on 12/8/15.
//  Copyright © 2015 UIUC. All rights reserved.
//

import UIKit
var yourVariable = 0.00
class ViewController: UIViewController {

    @IBOutlet weak var amountField: UITextField!
    
    
    
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var upPercent: UIButton!
    @IBOutlet weak var downPercent: UIButton!
    
    @IBOutlet weak var tipTotal: UITextField!
    
    @IBOutlet weak var upPeople: UIButton!
    @IBOutlet weak var downPeople: UIButton!
    @IBOutlet weak var numberPeople: UITextField!
    @IBOutlet weak var peopleTotal: UITextField!
    
    @IBOutlet weak var totalSum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let intValue = defaults.integerForKey("tipValue")
        tipPercent.text=String(format: "%d%%",intValue)
        
        let intValue2 = defaults.integerForKey("peopleNumber")
        numberPeople.text=String(format: "%d",intValue2)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func percentIncrease(sender: AnyObject) {
        var tipAmount = NSString(string: tipPercent.text!).doubleValue
        tipAmount=tipAmount+1
        let tipAmount1:Int = Int(tipAmount)
        tipPercent.text=String(format: "%d%%",tipAmount1)
        
        let billAmount = NSString(string: amountField.text!).doubleValue
        let tip=billAmount*(tipAmount/100)
        tipTotal.text=String(format: "$%.2f", tip)
        
        let total=billAmount+tip
        totalSum.text=String(format: "$%.2f", total)
        yourVariable=total
        
        let tipPeople = NSString(string: numberPeople.text!).doubleValue
        let amountPeople=total/tipPeople
        peopleTotal.text=String(format: "$%.2f", amountPeople)
    }
    @IBAction func percentDecrease(sender: AnyObject) {
        var tipAmount = NSString(string: tipPercent.text!).doubleValue
        if(tipAmount>0){
            tipAmount=tipAmount-1
        }
        let tipAmount1:Int = Int(tipAmount)
        tipPercent.text=String(format: "%d%%",tipAmount1)
        
        let billAmount = NSString(string: amountField.text!).doubleValue
        let tip=billAmount*(tipAmount/100)
        tipTotal.text=String(format: "$%.2f", tip)
        
        let total=billAmount+tip
        totalSum.text=String(format: "$%.2f", total)
        yourVariable=total
        
        let tipPeople = NSString(string: numberPeople.text!).doubleValue
        let amountPeople=total/tipPeople
        peopleTotal.text=String(format: "$%.2f", amountPeople)
    }

    @IBAction func peopleIncrease(sender: AnyObject) {
        var tipAmount = NSString(string: numberPeople.text!).doubleValue
        tipAmount=tipAmount+1
        let tipAmount1:Int = Int(tipAmount)
        numberPeople.text=String(format: "%d",tipAmount1)
        
        var totalAmount = yourVariable
        totalAmount=totalAmount/tipAmount
        peopleTotal.text=String(format: "$%.2f", totalAmount)
    }
    
    @IBAction func peopleDecrease(sender: AnyObject) {
        var tipAmount = NSString(string: numberPeople.text!).doubleValue
        if(tipAmount>1){
            tipAmount=tipAmount-1
        }
        let tipAmount1:Int = Int(tipAmount)
        numberPeople.text=String(format: "%d",tipAmount1)
        
        var totalAmount = yourVariable
        totalAmount=totalAmount/tipAmount
        peopleTotal.text=String(format: "$%.2f", totalAmount)
    }
    
    @IBAction func sadTap(sender: AnyObject) {
        let tipAmount1=10
        tipPercent.text=String(format: "%d%%",tipAmount1)
        let tipAmount=10.00
        
        let billAmount = NSString(string: amountField.text!).doubleValue
        let tip=billAmount*(tipAmount/100)
        tipTotal.text=String(format: "$%.2f", tip)
        
        let total=billAmount+tip
        totalSum.text=String(format: "$%.2f", total)
        yourVariable=total
        
        let tipPeople = NSString(string: numberPeople.text!).doubleValue
        let amountPeople=total/tipPeople
        peopleTotal.text=String(format: "$%.2f", amountPeople)

    }
    
    @IBAction func NoTap(sender: AnyObject) {
        let tipAmount1=15
        tipPercent.text=String(format: "%d%%",tipAmount1)
        let tipAmount=15.00
        
        let billAmount = NSString(string: amountField.text!).doubleValue
        let tip=billAmount*(tipAmount/100)
        tipTotal.text=String(format: "$%.2f", tip)
        
        let total=billAmount+tip
        totalSum.text=String(format: "$%.2f", total)
        yourVariable=total
        
        let tipPeople = NSString(string: numberPeople.text!).doubleValue
        let amountPeople=total/tipPeople
        peopleTotal.text=String(format: "$%.2f", amountPeople)
    }
    @IBAction func happyTap(sender: AnyObject) {
        let tipAmount1=20
        tipPercent.text=String(format: "%d%%",tipAmount1)
        let tipAmount=20.00
        
        let billAmount = NSString(string: amountField.text!).doubleValue
        let tip=billAmount*(tipAmount/100)
        tipTotal.text=String(format: "$%.2f", tip)
        
        let total=billAmount+tip
        totalSum.text=String(format: "$%.2f", total)
        yourVariable=total
        
        let tipPeople = NSString(string: numberPeople.text!).doubleValue
        let amountPeople=total/tipPeople
        peopleTotal.text=String(format: "$%.2f", amountPeople)
    }
    
    @IBAction func onePerson(sender: AnyObject) {
        let tipAmount1=1
        numberPeople.text=String(format: "%d",tipAmount1)
        let tipAmount=1.00
        var totalAmount = yourVariable
        totalAmount=totalAmount/tipAmount
        peopleTotal.text=String(format: "$%.2f", totalAmount)
    }
    
    @IBAction func twoPerson(sender: AnyObject) {
        let tipAmount1=2
        numberPeople.text=String(format: "%d",tipAmount1)
        let tipAmount=2.00
        var totalAmount = yourVariable
        totalAmount=totalAmount/tipAmount
        peopleTotal.text=String(format: "$%.2f", totalAmount)
    }
    
    @IBAction func fourPerson(sender: AnyObject) {
        let tipAmount1=4
        numberPeople.text=String(format: "%d",tipAmount1)
        let tipAmount=4.00
        var totalAmount = yourVariable
        totalAmount=totalAmount/tipAmount
        peopleTotal.text=String(format: "$%.2f", totalAmount)
    }
    
    @IBAction func refreshTap(sender: AnyObject) {
        let totalAmount=0.00
        peopleTotal.text=String(format: "$%.2f", totalAmount)
        tipTotal.text=String(format: "$%.2f", totalAmount)
        amountField.text=String("")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let intValue = defaults.integerForKey("tipValue")
        tipPercent.text=String(format: "%d%%",intValue)
        
        let intValue2 = defaults.integerForKey("peopleNumber")
        numberPeople.text=String(format: "%d",intValue2)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
    
}

