//
//  ViewController.swift
//  jsonSample
//
//  Created by Harish Hardy on 25/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nameX1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellX1 = tableView.dequeueReusableCell(withIdentifier: "cellIdentifierX1", for: indexPath) as! TableViewCellX
        
        cellX1.labelX1.text = nameX1[indexPath.row]
        cellX1.imageViewX1.image = UIImage(named : "contact")
        
        return cellX1
    }
    
    

    
    var nameX1 = [String()]

    override func viewDidLoad() {
        
        let pathX = Bundle.main.path(forResource: "employee", ofType: "plist")
        let dictionaryX = NSDictionary(contentsOfFile: pathX!) as! [String: Any]
        
        if let arrayX1 = (dictionaryX["employees"] as? [Any])
        {
            for arrayX2 in arrayX1
            {
                let detailX1 = arrayX2 as! [String : Any]
                
                print("ID           : ",detailX1["id"] ?? "not valid option")
                print("Name         : ",detailX1["name"] ?? "not valid option")
                print("E-mail ID    : ",detailX1["email"] ?? "not valid option")
                print("Address      : ",detailX1["address"] ?? "not valid option")
                
                nameX1.append(detailX1["name"] as! String )
                
                    let detailX2a = detailX1["phone"] as! [String : Any]
                
                    print("Phone-Mobile : ",detailX2a["mobile"] ?? "not valid option")
                    print("Phone-Home   : ",detailX2a["home"] ?? "not valid option")
                    print("Phone-Office : ",detailX2a["office"] ?? "not valid option")
                
                print("Gender       : ",detailX1["gender"] ?? "not valid option")
                print("")
                
            }
        }
        
        
        
        
       
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

