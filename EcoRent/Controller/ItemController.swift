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

class ItemController: UIViewController {
    
    var scan:Bool=false
    var time:String=""
    
    @IBOutlet weak var chopView: UIView!
    @IBOutlet weak var infoView: UIView!
    var progress:Double=1.0
    //var count:Int=0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text=time
        self.title = "租賃項目"
        //count=0
        
        if(scan){
            chopView.isHidden=true
            infoView.isHidden=true
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if(scan){
            SVProgressHUD.show(withStatus: "Search Object")
            SVProgressHUD.dismiss(withDelay: 2)
        }
       
    }
    override func viewDidAppear(_ animated: Bool) {

        if(scan){
            // 營造搜尋的時間
            var count=0
            while(count<=1000){
                count+=1
            }
          
            self.chopView.isHidden=false
            self.infoView.isHidden=false
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="mapIdentifier"{
            scan=false
        }
        
        if segue.identifier == "timeIdentifier"{
            let vc = segue.destination as! TController
            vc.start_time=time
            scan=false
        }
    }
    
    
    

    
}


