//
//  ViewController.swift
//  Health-Kit-Mockup
//
//  Created by mitchell hudson on 3/10/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepLabel: UILabel!
    
    
    
    @IBAction func getStepsButtonTapped(sender: UIButton) {
        displaySteps()
    }
    
    
    
    func displaySteps() {
        let steps = HealthManager.sharedInstance.stepCount
        stepLabel.text = "\(steps)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displaySteps()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

