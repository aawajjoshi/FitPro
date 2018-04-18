//
//  TimerViewController.swift
//  FitPro
//
//  Created by Joshi,Aawaj R on 3/9/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    var seconds = 60
    var timer = Timer()
    
    var ex:String?
    var number:Int?
    //    let exercises=["Barbell Squat","Dumbbell Rear Lunge","Leg Extensions","Standing Calf Raise","Hack Squats"]
    
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var exerciseDescription: UILabel!
    @IBOutlet weak var timeLBL: UILabel!
    
    @IBOutlet weak var startOTL: UIButton!
    
    
    @IBAction func addToPrograms(_ sender: Any) {
        self.performSegue(withIdentifier: "programs", sender: exerciseName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //        print(number!)
        //        print(Array(exercises[abc!].keys))
    }
    
    
    @IBAction func startBTN(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.counter), userInfo: nil, repeats: true)
        
        
        startOTL.isHidden = false
        
    }
    
    @objc func counter()
    {
        seconds -= 1
        timeLBL.text = String(seconds) + " seconds"
        
        if (seconds == 0)
        {
            timer.invalidate()
        }
    }
    
    @IBOutlet var stopOTL: UIView!
    
    
    @IBAction func stopBTN(_ sender: Any) {
        
        timer.invalidate()
        
        
        timeLBL.text = String(seconds) + " seconds"
        
        startOTL.isHidden = false
        
    }
    
    
    @IBAction func resetBTN(_ sender: Any) {
        timer.invalidate()
        seconds = 60
        timeLBL.text = String(seconds) + " seconds"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        print(ex!)
        if number != nil{
            exerciseName=Array(exercises[abc!].keys)[number!]
            let a=exercises[abc!]
            if let arr=Array(a.keys) as? [String]{
                print(arr[number!])
                self.image.image=UIImage(named:"\(arr[number!]).png")
                self.exerciseDescription.text=a[arr[number!]]
            }
        }else{
            self.image.image=UIImage(named:"\(ex!).png")
            self.exerciseDescription.text=nar[ex!]
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var exerImage: UIImageView!
    
    
}

