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
        
        if let arrayX1 = (dictionaryX["employees"] as? NSArray)
        {
            for arrayX2 in arrayX1
            {
                let detailX1 = arrayX2 as! [String : Any]
                
                print("ID           : ",detailX1["id"] ?? "not valid option")
                print("Name         : ",detailX1["name"] ?? "not valid option")
                print("E-mail ID    : ",detailX1["email"] ?? "not valid option")
                print("Address      : ",detailX1["address"] ?? "not valid option")
                
                    let detailX2a = detailX1["phone"] as? [String : Any]
                
                    print("Phone-Mobile : ",detailX2a?["mobile"] ?? "not valid option")
                    print("Phone-Home   : ",detailX2a?["home"] ?? "not valid option")
                    print("Phone-Office : ",detailX2a?["office"] ?? "not valid option")
                
                print("Gender       : ",detailX1["gender"] ?? "not valid option")
                print("")
                
            }
        }
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

