//
//  ToDo.swift
//  ToDoList
//
//  Created by Chad Trador on 10/24/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit

class ToDo: NSObject, NSCoding {
    
    var title = ""
    var text = ""
    var date = Date()
    var image: UIImage?
    var dueDate = ""
    var completed = ""
    
    let titleKey = "title"
    let textKey = "text"
    let dateKey = "date"
    let imageKey = "image"
    let dueDateKey = "MM-dd-yyyy HH:mm"
    let completedKey = "completed"
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.string(from: date)
    }
    
    override init() {
        super.init()
    }
    
    init(title: String, text: String, dueDate: String, completed: String) {
        self.title = title
        self.text = text
        self.dueDate = dueDate
        self.completed = completed
        
        
    }
    
    required init? (coder aDecoder: NSCoder) {
        self.title = aDecoder.decodeObject(forKey: titleKey) as! String
        self.text = aDecoder.decodeObject(forKey: textKey) as! String
        self.date = aDecoder.decodeObject(forKey: dateKey) as! Date
        self.image = aDecoder.decodeObject(forKey: imageKey) as? UIImage
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(title, forKey: titleKey)
        aCoder.encode(text, forKey: textKey)
        aCoder.encode(date, forKey: dateKey)
        aCoder.encode(image, forKey: imageKey)
    }
}
