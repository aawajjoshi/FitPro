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
    
   

    @IBOutlet weak var timeLBL: UILabel!
    
    @IBOutlet weak var startOTL: UIButton!
    
    @IBAction func startBTN(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.counter), userInfo: nil, repeats: true)
        
        startOTL.isHidden = true
        
    }
    
    @objc func counter()
    {
        seconds -= 1
        timeLBL.text = String(seconds) + " Seconds"
        
        if (seconds == 0)
        {
            timer.invalidate()
        }
    }
    
    
    @IBOutlet weak var stopOTL: UIButton!
    
    @IBAction func stopBTN(_ sender: Any) {
        timer.invalidate()
        seconds = 30
        
        timeLBL.text = "30 Seconds"
        
        startOTL.isHidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
