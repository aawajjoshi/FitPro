//
//  File.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 3/9/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import Foundation
import UIKit
class  DaysModel{
    var days:[String]

    var dayImage:[UIImage]
    
    var body:[String]
    var bodyImage:[UIImage]
    
    init(){
      days=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
    dayImage=[#imageLiteral(resourceName: "Sunday"),#imageLiteral(resourceName: "Monday"),#imageLiteral(resourceName: "Tuesday"),#imageLiteral(resourceName: "Wednesday"),#imageLiteral(resourceName: "Thursday"),#imageLiteral(resourceName: "Friday"),#imageLiteral(resourceName: "Saturday")]
        body = ["Legs", "Arms", "Chest", "Back", "Cardio", "Yoga"]
        bodyImage = [#imageLiteral(resourceName: "Legs"), #imageLiteral(resourceName: "Arms"), #imageLiteral(resourceName: "Chest"), #imageLiteral(resourceName: "Back"), #imageLiteral(resourceName: "Cardio"), #imageLiteral(resourceName: "Yoga")]
        
    }
    class func DaysFunc()->DaysModel{
        return DaysModel()
    }
    
   
}
