//
//  BodyPartTableViewController.swift
//  FitPro
//
//  Created by Joshi,Aawaj R on 3/9/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit

class BodyPartTableViewController: UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        self.navigationItem.hidesBackButton=true
    //    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bodyE.exercises.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Body_Cell")
        let label = cell?.viewWithTag(100) as! UILabel
        let imageView=cell?.viewWithTag(200) as! UIImageView
        label.text=bodyE.exercises[indexPath.row].bodypart
        //AppDelegate.daysCode.//body[indexPath.row]
        //AppDelegate.daysCode.bodyImage[indexPath.row]
        imageView.image=bodyE.exercises[indexPath.row].image
        
        cell?.layer.cornerRadius = 35
        
        return cell!
    }
   
    
    
    
    
    @IBAction func toPrograms(_ sender: Any) {
        self.performSegue(withIdentifier: "toPrograms", sender: nil)
    }
   
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = tableView.indexPathForSelectedRow!.row
        abc=index
        self.performSegue(withIdentifier: "part_to_exercise", sender: index)
    }
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        //        // Pass the selected object to the new view controller.
        
        if  segue.identifier=="part_to_exercise"{
            let destination = segue.destination as! ExerciseTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            destination.bodyexercise = bodyE.bodypartNum(index)
            
            
        }
        
        
    }
}

