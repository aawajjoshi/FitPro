//
//  File.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 3/9/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import Foundation
class  DaysModel{
    var days:[String]
    init(){
      days=["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    }
    class func DaysFunc()->Daysmodel{
        return DaysModel()
    }
    
}
