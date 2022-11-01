//
//  RemainderList.swift
//  Challenge1
//
//  Created by roba on 29/10/2022.
//

import Foundation
import UIKit

struct Reminder: Identifiable{
    let id = UUID()
    let name : String
    let time : String
    let content : String
    var numOfReact : Int
    let image:String
    let allReact = [String : Int]()
}

var Reminderlist = [
    Reminder(name: "Indria", time: "5m ago", content: "had a little chat with my mother fuvhjtfughrjfunrijkfhurb", numOfReact: 5, image:"profilePic"),
    Reminder(name: "Casper", time: "30m ago", content: "just prayed Duhur", numOfReact: 3, image:"casper"),
    Reminder(name: "Leonardo", time: "3h ago", content: "I just ate lunch", numOfReact: 6, image:"casper")
    
]
