//
//  Catergory.swift
//  ToDoList
//
//  Created by Chad Trador on 10/30/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit

class Catergory: NSObject, NSCoding {
    
    var catergory = ""
    
    let catergoryKey = "catergory"
    
    
    override init() {
        super.init()
    }
    
    init(catergory: String) {
        self.catergory = catergory
           }
    
    required init? (coder aDecoder: NSCoder) {
        self.catergory = aDecoder.decodeObject(forKey: catergoryKey) as! String
      }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(catergory, forKey: catergoryKey)
        }
}
