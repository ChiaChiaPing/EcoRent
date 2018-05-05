//
//  DataHistory.swift
//  EcoRent
//
//  Created by 賈加平 on 2018/5/4.
//  Copyright © 2018年 賈加平. All rights reserved.
//

import Foundation
import UIKit

class DataHistory{
    //利用static 當作是資料共同存放的地方 // share variable 的概念
    //static var data:[String:String]=[:]
    static var times = "20"
    static var items = "筷子 湯匙 碗筷"
    static var points = "300"
    static var decrease = "3.27"
    static var money = 10
    static var time:String = ""
    
    
    
    static func geTime()->String{
        let currentDateTime=Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .none
        return formatter.string(from:currentDateTime)
    }
    

    
}
