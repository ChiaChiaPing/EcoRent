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

class TController: UIViewController {
    
    var start_time:String=""
    
    @IBOutlet weak var startTimeLabel: UILabel!
    
    @IBOutlet weak var CurrentTimeLabel: UILabel!
    
    @IBOutlet weak var UseTimeLabel: UILabel!
    
    @IBOutlet weak var SpendFee: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimeLabel.text=start_time
        generateCurrentDate()
        computeUseTime()
        self.title = "使用時間"
        
        // Do any additional setup after loading the view, typically from a
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateCurrentDate(){
        
        let currentDateTime=Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .none
        CurrentTimeLabel.text = formatter.string(from:currentDateTime)
        
        
        
    }
    
    func computeUseTime(){
        
        // start time
        var secondst:Int=0
        var minutest:Int=0
        var hourst:Int=0
        
        // current time
        var secondcur:Int=0
        var minutecur:Int=0
        var hourcur:Int=0
        
        let start = start_time
        let cur = CurrentTimeLabel.text
        
        // use time splition to compute the time delta
        
        
        // 觀察是否為pm，每台收機支援的時間格式不同
        if start.split(separator: "午")[0]=="下"{
            let text=String(start.split(separator: "午")[1])
            hourst=Int(text.split(separator: ":")[0])!+12
            
        }else{
            let text=String(start.split(separator: "午")[1])
            hourst=Int(text.split(separator: ":")[0])!
        }
        
        if let cu = cur {
            if cur!.split(separator: "午")[0]=="下"{
                let text=String(cu.split(separator: "午")[1])
                hourcur=Int(text.split(separator: ":")[0])!+12
            }
            else{
                let text=String(cu.split(separator: "午")[1])
                hourcur=Int(text.split(separator: ":")[0])!
            }
        }
        
        // start time
        secondst=Int(String(start.split(separator: "午")[1]).split(separator: ":")[2])!
        minutest=Int(String(start.split(separator: "午")[1]).split(separator: ":")[1])!
        
        // current time
        
        if let cu = cur {
            secondcur=Int(String(cu.split(separator: "午")[1]).split(separator: ":")[2])!
            minutecur=Int(String(cu.split(separator: "午")[1]).split(separator: ":")[1])!
        }
        
        print(hourst)
        print(minutest)
        print(secondst)
        print(hourcur)
        print(minutecur)
        print(secondcur)
        
        // compute time difference
        let hour = (hourcur-hourst) * 3600
        let minute = (minutecur-minutest)*60
        let second = secondcur-secondst
        var difference = hour+minute+second // 拿來做呈現的
        var temp = difference //用來記錄費用的
        
        
        //show the time (use time difference)
        var showH:String="0"
        var showM:String="0"
        var showS:String="0"
        
        if difference >= 3600{
            showH=String(difference/3600)
            difference = difference % 3600
        }
        if difference>=60{
            showM=String(difference/60)
            difference = difference % 60
        }
        if difference>=0{
            showS=String(difference)
        }
        let showText = showH+"時 "+showM+"分 "+showS+"秒 "
        UseTimeLabel.text=showText
        
        
        // compute Fee 每三小時計費一次，未滿三小時以三小時計算，（要再想如何計價）
        // 測試版本：每10秒 1塊
        var Fee:Double=0.0
        Fee = ceil(Double(temp)/(10))
        DataHistory.money=Int(Fee)*10
        SpendFee.text=String(Int(Fee)*10)+"元"
        
    }
    
        
    
    
    
    
    
    
    
}







