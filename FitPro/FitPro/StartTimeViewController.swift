//
//  StartTimeViewController.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 4/22/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit

class StartTimeViewController: UIViewController {
    var seconds = 60
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
