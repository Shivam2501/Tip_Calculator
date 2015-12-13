//
//  SettingsViewController.swift
//  Tips
//
//  Created by Shivam Bharuka on 12/12/15.
//  Copyright © 2015 UIUC. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipDefault: UISegmentedControl!
    @IBOutlet weak var peopleDefault: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        let intValue = defaults.integerForKey("tipValue")
        if(intValue==10){
            tipDefault.selectedSegmentIndex=0;
        }
        else if(intValue==15){
            tipDefault.selectedSegmentIndex=1;
        }
        else if(intValue==20){
            tipDefault.selectedSegmentIndex=2;
        }
        
        let intValue2 = defaults.integerForKey("peopleNumber")
        if(intValue2==1){
            peopleDefault.selectedSegmentIndex=0;
        }
        else if(intValue2==2){
            peopleDefault.selectedSegmentIndex=1;
        }
        else if(intValue2==4){
            peopleDefault.selectedSegmentIndex=2;
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChange(sender: AnyObject) {
        let tipPercentages=[10,15,20]
        let tipPercentage=tipPercentages[tipDefault.selectedSegmentIndex]
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipPercentage, forKey: "tipValue")
        defaults.synchronize()
    }
    @IBAction func changeOn(sender: AnyObject) {
        let peoples=[1,2,4]
        let people=peoples[peopleDefault.selectedSegmentIndex]
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(people, forKey: "peopleNumber")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
