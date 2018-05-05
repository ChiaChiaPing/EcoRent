//
//  MapController.swift
//  EcoRent
//
//  Created by 賈加平 on 2018/5/1.
//  Copyright © 2018年 賈加平. All rights reserved.
//

//
//  ViewController.swift
//  EcoRent
//
//  Created by 賈加平 on 2018/5/1.
//  Copyright © 2018年 賈加平. All rights reserved.
//

import UIKit
import Foundation
import SVProgressHUD
//import GoogleMaps

class HistController: UIViewController {
    
    @IBOutlet weak var timesLabel: UILabel!
    
    @IBOutlet weak var itemsLabel: UILabel!
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    @IBOutlet weak var garbageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //timesLabel.text=DataHistory.times
        //itemsLabel.text=DataHistory.items
        //pointsLabel.text=DataHistory.points
        //garbageLabel.text=DataHistory.decrease
        self.title = "個人使用紀錄"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}







