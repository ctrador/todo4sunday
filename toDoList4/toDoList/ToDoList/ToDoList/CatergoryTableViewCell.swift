//
//  CatergoryTableViewCell.swift
//  ToDoList
//
//  Created by Chad Trador on 10/30/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit

class CatergoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var toDoCatergoryLabel: UILabel!
    
    weak var catergory: Catergory!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupCell(_ catergory: Catergory){
        
        self.catergory = catergory
        
    }
    
}

