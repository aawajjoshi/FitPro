//
//  CustomTableViewCell.swift
//  FitPro
//
//  Created by Joshi,Aawaj R on 2/15/18.
//  Copyright © 2018 Joshi,Aawaj R. All rights reserved.


//  This is a custom class file for our cell

import UIKit

class CustomTableViewCell: UITableViewCell {

    //UIView connector for our cell view
    @IBOutlet weak var cellview: UIView!
    
    //UIImageView connector for our image
    @IBOutlet weak var bodyImage: UIImageView!
    
    //UILabel connector for our label
    @IBOutlet weak var bodyLBL: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
