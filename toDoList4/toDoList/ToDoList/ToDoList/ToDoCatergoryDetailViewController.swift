//
//  ToDoCatergoryDetailViewController.swift
//  ToDoList
//
//  Created by Chad Trador on 10/30/16.
//  Copyright © 2016 Chad Trador. All rights reserved.
//

import UIKit

class ToDoCatergoryDetailViewController: UIViewController {
    
    @IBOutlet weak var toDoNewCatergoryTextField: UITextField!
    
    var catergory = Catergory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoNewCatergoryTextField.text = catergory.catergory
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        catergory.catergory = toDoNewCatergoryTextField.text!
    }
    
    // MARK: IBActions
    
}


