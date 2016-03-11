//
//  HealthManager.swift
//  Health-Kit-Mockup
//
//  Created by mitchell hudson on 3/10/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class HealthManager: NSObject {
    
    var stepCount: Int = 0
    
    
    func onTimer(timer: NSTimer) {
        stepCount++
    }
    
    
    static let sharedInstance = HealthManager()
    
    override init() {
        super.init()
        
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("onTimer:"), userInfo: nil, repeats: true)
    }
}