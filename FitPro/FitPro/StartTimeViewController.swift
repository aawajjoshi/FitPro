//
//  StartTimeViewController.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 4/22/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit
import AVFoundation

class StartTimeViewController: UIViewController {
    
    var seconds = 30
    var timer = Timer()
    var audioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        seconds = Int(sender.value)
        label.text = String(seconds) + " Seconds"
        
    }
    
    
    @IBOutlet weak var startOutlet: UIButton!
    
    @IBAction func start(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(StartTimeViewController.counter), userInfo: nil, repeats: true)
        
        sliderOutlet.isHidden = true
        startOutlet.isHidden = true
        
      
    }
    
    @objc func counter()
    {
        seconds -= 1
        label.text = String(seconds) + " Seconds"
        
        if (seconds == 0)
        {
            timer.invalidate()
            audioPlayer.play()
            label.text = "Done"
            sliderOutlet.isHidden = false
            startOutlet.isHidden = false
        }
    }
    
    
    @IBAction func stop(_ sender: AnyObject) {
        timer.invalidate()

        sliderOutlet.setValue(Float(seconds), animated: true)
        label.text = "\(seconds) Seconds"
        
        audioPlayer.stop()
        
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
        
        if seconds == 0 {
            sliderOutlet.setValue(Float(seconds), animated: true)
            label.text = "Done"
        }

    }
    
    @IBOutlet weak var stopOutlet: UIButton!
    
    
    @IBAction func reset(_ sender: AnyObject) {
        timer.invalidate()
        seconds = 30
        sliderOutlet.setValue(Float(seconds), animated: true)
        label.text = String(seconds) + " Seconds"
        
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
        
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "analog", ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch
        {
            //ERROR
        }
       

        
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    
    
    
}
