//
//  ViewController.swift
//  agenda
//
//  Created by zadkiel de jesus on 29/05/2019.
//  Copyright © 2019 zadkiel de jesus. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import ProgressHUD

class ViewController: UIViewController {
    
    let agenda_URL = "https://s3.amazonaws.com/technical-challenge/v3/contacts.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // instance variables
    
    let contactDataModel = ContactDataModel()
    
    
    //Networking
    
    func getWeatherData(url: String, parameters: [String: String]) {
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
            response in
            if response.result.isSuccess {
                print("Success! Got the data")
                let dataJSON : JSON = JSON(response.result.value!)
                
                print(dataJSON)
            }
            else {
                print("Error \(String(describing: response.result.error))")
            }
            
        }
        
    }
    
    //Json parsing
    
    func DataUpdate (json : JSON) {
        
        let userName = json["name"].stringValue
        
        
        
        
        //
        //    }
        //
        //    @IBOutlet weak var label: UILabel!
        //
        //    @IBAction func button(_ sender: UIButton) {
        //
        //        label.text = NSUserName().text
    }
    
}

