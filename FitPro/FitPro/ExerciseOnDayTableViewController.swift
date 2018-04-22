//
//  ExerciseOnDayTableViewController.swift
//  FitPro
//
//  Created by Vinukonda,Sirisha on 4/18/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import Foundation
import UIKit


class ExerciseOnDayTableViewController: UITableViewController {
    //    var dayNumber2:Int?
    
    var listOfExercises:[String]=[]
    var dayNumber:Int?
    var data:[String]=[]
    let days=["sunday","monday","tuesday","wednesday","thurday","friday","saturday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        //        print(exerciseName!)
        //        print(dayNumber!)
        //
        print(days[dayNumber!])
        if let items=UserDefaults.standard.object(forKey: days[dayNumber!]) as? [String]{
            data=items
            
            if data.count != 0{
                if exerciseName != nil{
                    data.append(exerciseName!)
                }else{
                    print("no dataa")
                }
            }else{
                if exerciseName != nil{
                    data=[exerciseName!]
                }else{
                    print("no dataa 1")
                }
            }
            
            
        }
        abc=nil
        exerciseName=nil
        
        UserDefaults.standard.set(data, forKey: days[dayNumber!])
        //        listOfExercises.append(exerciseName!)
    }
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
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "onADay")
        let label = cell?.viewWithTag(1) as! UILabel
        label.text=data[indexPath.row]
        cell?.layer.cornerRadius = 35
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            data.remove(at: indexPath.row)
            self.tableView.reloadData()
            UserDefaults.standard.set(data, forKey: days[dayNumber!])
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "getThat", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        //        // Pass the selected object to the new view controller.
        
        if  segue.identifier=="getThat"{
            let destination = segue.destination as! TimerViewController
            let index = tableView.indexPathForSelectedRow!.row
            destination.ex = self.data[index]
            
            //        airline = FAA.airlineNum(index)
            
        }
        
        
    }
    
    //
    //    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //     print(dayNumber!)
    //    }
    
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
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
