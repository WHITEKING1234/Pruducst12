//
//  TableViewCell.swift
//  Pruducst12
//
//  Created by Mac on 7/2/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let resuldID = String(describing: TableViewCell.self)
    
    @IBOutlet weak var Imagekok1: UIImageView!
    
    
    @IBOutlet weak var imageKok2: UIImageView!
    
    @IBOutlet weak var lable1: UILabel!
    
    
    
    @IBOutlet weak var lable2: UILabel!
    
    @IBAction func button1(_ sender: Any) {
    }
    
    @IBAction func Button2(_ sender: Any) {
    }
    
    
    
    
    
    
    func display(item:drink){
        lable2.text = item.strDrink
    
        
    }
}
