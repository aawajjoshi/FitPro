//
//  File.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 3/9/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import Foundation
import UIKit
struct bodyExercise{
    var bodypart:String
    var partExercise:[String]
    init(bodypart:String,partExercise:[String]){
        self.bodypart=bodypart
        self.partExercise=partExercise
    }
}
struct bodyE{
    static var  exercises:[bodyExercise]=[
        bodyExercise(bodypart:"Legs",partExercise:["Barbell Squat","Dumbbell Rear Lunge","Leg Extensions","Standing Calf Raise","Hack Squats"]),
        bodyExercise(bodypart:"Arms",partExercise:["Bicep Curl","Hammer Curl","Incline Dumbbell Curl","Alternating Bicep Curl","Barbell Curl"]),
        bodyExercise(bodypart:"Chest",partExercise:["Barbell Incline Bench Press","Incline Dumbbell Bench Press","Decline Dumbbell Bench Press","Cable Crossover","Dips"]),
        bodyExercise(bodypart:"Back",partExercise:["Wide-Grip Pull-Up","Single Arm Row","Lat Pulldown","Bent Over Barbell Row","V-Bar Pulldown"]),
        bodyExercise(bodypart:"Cardio",partExercise:["Burpee","Jogging Treadmill","Elliptical Trainer","Runner","Bicycling"]),
        bodyExercise(bodypart:"Yoga",partExercise:["Bridge","Downward Dog","Child Pose","Warrior1","Traingle","Chair"]),
        ]
    
}
class  DaysModel{
    var days:[String]

    var dayImage:[UIImage]
    
    var body:[String]
    var bodyImage:[UIImage]
 
    
    init(){
      days=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
    dayImage=[#imageLiteral(resourceName: "Sunday"),#imageLiteral(resourceName: "Monday"),#imageLiteral(resourceName: "Tuesday"),#imageLiteral(resourceName: "Wednesday"),#imageLiteral(resourceName: "Thursday"),#imageLiteral(resourceName: "Friday"),#imageLiteral(resourceName: "Saturday")]
        body = ["Legs", "Arms", "Chest", "Back", "Cardio", "Yoga"]
       bodyImage=[#imageLiteral(resourceName: "Legs"),#imageLiteral(resourceName: "Arms"),#imageLiteral(resourceName: "Chest"),#imageLiteral(resourceName: "Back"),#imageLiteral(resourceName: "Cardio"),#imageLiteral(resourceName: "Yoga")]
        
    }
    class func DaysFunc()->DaysModel{
        return DaysModel()
    }
    
   
}
