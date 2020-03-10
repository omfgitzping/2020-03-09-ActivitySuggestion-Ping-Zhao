//
//  ViewController.swift
//  2020-03-09-ActivitySuggestion-Ping-Zhao
//
//  Created by Ping Zhao on 3/9/20.
//  Copyright © 2020 Ping Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempTextField: UITextField!
    
    @IBOutlet weak var labelActivityRec: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonActivityPressed(_ sender: UIButton) {
        let tempString = tempTextField.text!
        let tempInt = Int(tempString)
        var recActivity = ""
        
        if tempInt! >= 80 {
            recActivity = "Swimming"
        }else if tempInt! >= 60 {
            recActivity = "Tennis"
        }else if tempInt! >= 40 {
            recActivity = "Golf"
        }else{
            recActivity = "Skiing"
        }
        
        labelActivityRec.text = "Activity: \(recActivity)"
        
    // >80 Swimming
    // 60-80 Tennis
    // 40-60 Golf
    // <40 Skiing
        
        
        
    }
}

