//
//  CatergoryStore.swift
//  ToDoList
//
//  Created by Chad Trador on 10/30/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit


class CatergoryStore {
    
    static let shared = CatergoryStore()
    fileprivate var catergorys : [Catergory]!
    
    
    
    init() {
        let filePath = archiveFilePath()
        let fileManager = FileManager.default
        
        if fileManager.fileExists(atPath: filePath) {
            
            catergorys = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! [Catergory]
        } else {
            catergorys = []
            catergorys.append(Catergory(catergory: "Home"))
            catergorys.append(Catergory(catergory: "Work"))
            catergorys.append(Catergory(catergory: "Other"))
            
            save()
        }
        
    }
    
    
    
    //mark public functions
    
    
    func getCatergory(_ index: Int)->Catergory {
        
        return catergorys[index]
    }
    func addCatergory(catergory: Catergory) {
        catergorys.insert(catergory, at: 0)
    }
    
    func updateCatergory(_ catergory: Catergory, index: Int)  {
        catergorys[index] = catergory
    }
    func deleteToDo(_ index: Int) {
        catergorys.remove(at: index)
    }
    func getCount()-> Int {
        return catergorys.count
    }
    
    func save(){
        NSKeyedArchiver.archiveRootObject(catergorys, toFile: archiveFilePath())
    }
    
    // **sort by catergory
    func sort() {
    catergorys.sort { (catergory1, catergory2) -> Bool in
    return catergory1.catergory.compare(catergory2.catergory) == .orderedDescending
    
        }
    }
    // Mark - Private Functions
    
    
    fileprivate func archiveFilePath() -> String {
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        let documentsDirectory = paths.first!
        let path = (documentsDirectory as NSString).appending("CatergoryStore.plist")
        return path
        
    }
}



