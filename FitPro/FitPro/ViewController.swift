//
//  ViewController.swift
//  FitPro
//
//  Created by Joshi,Aawaj R on 2/15/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //Array of different body parts
    let bodyParts = ["Legs", "Arms", "Chest", "Back", "Cardio", "Yoga"]
    
    //UITableView connector for our Table View
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        
        //Assigning delegates in data source to our Table View
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        //Returns our array count as number of rows
        return bodyParts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        //creating constant cell with indetifier 'customCell' as casted as CustomTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        
        cell.cellview.layer.cornerRadius = cell.cellview.frame.height / 2
        
        //assigning label
        cell.bodyLBL.text = bodyParts[indexPath.row]
        cell.bodyImage.image = UIImage(named: bodyParts[indexPath.row])
        cell.bodyImage.layer.cornerRadius = cell.bodyImage.frame.height / 2
        
        return cell
        
        
    }

    

}

