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

class ReturnController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //SVProgressHUD.show(withStatus: "Recycling")
         self.title = "歸還餐具扣款"
        // Do any additional setup after loading the view, typically from a
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var count=0
        
        //營造等待感
        
        while(count<=1000000000){
            count+=1
            
        }
        //SVProgressHUD.dismiss(withDelay: 0)
      
        complete()
        
        
    }
    
    // MARK:- Show Alert
    func complete()->Void{
        let alert = UIAlertController(title: "回收成功", message: "您已完成付款(付款金額為 "+String(DataHistory.money)+" 元)\n歡迎您下次使用", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "確認", style: .default, handler: { UIAlertAction in
            
            let sb=UIStoryboard(name:"Main",bundle:nil)
            let vc=sb.instantiateViewController(withIdentifier: "PointController") as! PointController
            self.navigationController?.pushViewController(vc, animated: true)
        
        })
        
        alert.addAction(restartAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}






