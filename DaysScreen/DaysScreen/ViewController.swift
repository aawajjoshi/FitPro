//
//  ViewController.swift
//  DaysScreen
//
//  Created by Vinukonda,Sirisha on 2/15/18.
//  Copyright © 2018 Vinukonda,Sirisha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! DaysScreenTableViewCell
        cell.DayLabel.text = days[indexPath.row]
        cell.DayImage.image = UIImage(named: days[indexPath.row])
        return cell
    }

}

