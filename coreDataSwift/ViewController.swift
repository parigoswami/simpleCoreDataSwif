//
//  ViewController.swift
//  coreDataSwift
//
//  Created by pari on 01/08/17.
//  Copyright © 2017 pari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var data = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        insertData()
        fetchData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func insertData(){
        let userx = User(context: context)
        userx.name = "Paris"
        userx.age = 20
        
        let usery = User(context: context)
        usery.name = "Vedant"
        usery.age = 16
        
        appDelegate.saveContext()
        print("Done insert")
    }
    
    func fetchData(){
        do{
            data = try context.fetch(User.fetchRequest())
            for each in data{
                print ("Name :",each.name ?? "nil","And Age :",each.age)
            }
        }
        catch{
            
        }
        print("done fetch")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

