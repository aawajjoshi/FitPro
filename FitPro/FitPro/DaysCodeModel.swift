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
    var image:UIImage
    init(bodypart:String,image:UIImage,partExercise:[String]){
        self.bodypart=bodypart
        self.image=image
        self.partExercise=partExercise
        
    }
}
struct bodyE{
    static var  exercises:[bodyExercise]=[
        bodyExercise(bodypart:"Legs",image:#imageLiteral(resourceName: "Legs"),partExercise:["Standing Calf Raise","Dumbbell Rear Lunge","Hack Squats","Leg Extensions","Barbell Squat"]),
        bodyExercise(bodypart:"Arms",image:#imageLiteral(resourceName: "Arms"),partExercise:["Alternating Bicep Curl","Bicep Curl","Barbell Curl","Hammer Curl","Incline Dumbbell Curl"]),
        bodyExercise(bodypart:"Chest",image:#imageLiteral(resourceName: "Chest"),partExercise:["Cable Crossover","Incline Dumbbell Bench Press","Decline Dumbbell Bench Press","Barbell Incline Bench Press","Dips"]),
        bodyExercise(bodypart:"Back",image:#imageLiteral(resourceName: "Back"),partExercise:["Bent Over Barbell Row","Single Arm Row","V-Bar Pulldown","Wide-Grip Pull-Up","Lat Pulldown"]),
        bodyExercise(bodypart:"Cardio",image:#imageLiteral(resourceName: "Cardio"),partExercise:["Jogging Treadmill","Elliptical Trainer","Runner","Bicycling","Burpee"]),
        bodyExercise(bodypart:"Yoga",image:#imageLiteral(resourceName: "Yoga"),partExercise:["Bridge","Child Pose","Chair","Downward Dog","Warrior1","Traingle"]),
        ]
    static func bodypartNum(_ index:Int) -> bodyExercise {
        return exercises[index]
    }
    
}
class  DaysModel{
    var days:[String]
    
    var dayImage:[UIImage]
    
    //var body:[String]
    //var bodyImage:[UIImage]
    
    
    init(){
        days=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
        dayImage=[#imageLiteral(resourceName: "Sunday"),#imageLiteral(resourceName: "Monday"),#imageLiteral(resourceName: "Tuesday"),#imageLiteral(resourceName: "Wednesday"),#imageLiteral(resourceName: "Thursday"),#imageLiteral(resourceName: "Friday"),#imageLiteral(resourceName: "Saturday")]
        // body = ["Legs", "Arms", "Chest", "Back", "Cardio", "Yoga"]
        // bodyImage=[#imageLiteral(resourceName: "Legs"),#imageLiteral(resourceName: "Arms"),#imageLiteral(resourceName: "Chest"),#imageLiteral(resourceName: "Back"),#imageLiteral(resourceName: "Cardio"),#imageLiteral(resourceName: "Yoga")]
        
    }
    class func DaysFunc()->DaysModel{
        return DaysModel()
    }
    
    
}

