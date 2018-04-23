//
//  NewTimerControllerViewController.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 4/22/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit

class NewTimerControllerViewController: UIViewController {
 var ex:String?
 
  var number:Int?
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var exerciseDescription: UILabel!
    
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
