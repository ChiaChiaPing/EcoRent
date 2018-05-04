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

class PointController: UIViewController {
    
    @IBOutlet weak var pointLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration:2){
            self.pointLabel.transform=CGAffineTransform(scaleX:2,y:2)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //營造等待感
        var count = 0
        while(count<=500000000){
            count+=1
        }
        
        // Update History Data
        DataHistory.times = String(Int(DataHistory.times)!+1)
        DataHistory.points = String(Int(DataHistory.points)!+10)
        DataHistory.decrease = String(Double(DataHistory.decrease)!+0.1)
        
        // 跳轉頁面ㄋ
        let sb=UIStoryboard(name:"Main",bundle:nil)
        let vc=sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

