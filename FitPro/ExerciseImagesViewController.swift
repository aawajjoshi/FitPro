//
//  ExerciseImagesViewController.swift
//  FitPro
//
//  Created by Vunnam,Naresh on 4/2/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit

class ExerciseImagesViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    

    @IBOutlet weak var Description: UILabel!
    
    
    @IBOutlet weak var StartOTL: UIButton!
    
    @IBAction func Start(_ sender: Any) {
        self.performSegue(withIdentifier: "timer", sender: StartOTL)
    }
    
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
