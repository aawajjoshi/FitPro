//
//  TimerViewController.swift
//  FitPro
//
//  Created by Joshi,Aawaj R on 3/9/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit
import AVFoundation

class TimerViewController: UIViewController {

    var seconds = 10
    var timer = Timer()
    var audio = AVAudioPlayer()
    
    
    @IBOutlet weak var timeLBL: UILabel!
    
    @IBOutlet weak var startOTL: UIButton!
    
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
            
            audio.play()
            timeLBL.text = "Done!"
        }
    }
    
    @IBOutlet var stopOTL: UIView!
    
    
    @IBAction func stopBTN(_ sender: Any) {
        
        timer.invalidate()
        
        
        timeLBL.text = String(seconds) + " seconds"
        
        startOTL.isHidden = false
        
        audio.stop()
        
    }
    
    
    @IBAction func resetBTN(_ sender: Any) {
        timer.invalidate()
        seconds = 10
        timeLBL.text = String(seconds) + " seconds"
        audio.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audioPath = Bundle.main.path(forResource: "analog", ofType: ".mp3")
            try audio = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        }
        catch{
            //Error
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var exerImage: UIImageView!
    

}
