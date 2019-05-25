//
//  ViewController.swift
//  jsonSample
//
//  Created by Harish Hardy on 25/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        
        
        
        let pathX = Bundle.main.path(forResource: "employee", ofType: "plist")
        let dictionaryX = NSDictionary(contentsOfFile: pathX!) as! [String: Any]
        
        if let arrayX = (dictionaryX["employees"] as? NSArray)
        {
            let arrayX1 = arrayX
            
            for arrayX3 in arrayX1
            {
                let detailX1 = arrayX3 as! [String : Any]
                print("ID           : ",detailX1["id"] ?? "not valid option")
                
                let detailX2 = arrayX3 as! [String : Any]
                print("Name         : ",detailX2["name"] ?? "not valid option")
                
                let detailX3 = arrayX3 as! [String : Any]
                print("E-mail ID    : ",detailX3["email"] ?? "not valid option")
                
                let detailX4 = arrayX3 as! [String : Any]
                print("Address      : ",detailX4["address"] ?? "not valid option")
                
                    let detailX5a = detailX1["phone"] as? [String : Any]
                    print("Phone-Mobile : ",detailX5a?["mobile"] ?? "not valid option")
                
                    let detailX5b = detailX1["phone"] as? [String : Any]
                    print("Phone-Home   : ",detailX5b?["home"] ?? "not valid option")
                
                    let detailX5c = detailX1["phone"] as? [String : Any]
                    print("Phone-Office : ",detailX5c?["office"] ?? "not valid option")
                
                let detailX6 = arrayX3 as! [String : Any]
                print("Gender       : ",detailX6["gender"] ?? "not valid option")
                
                print("")
                
            }
        }
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

