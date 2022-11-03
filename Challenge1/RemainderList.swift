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
    Reminder(name: "jelena", time: "5m ago", content: "had a little chat with my mother ", numOfReact: 5, image:"jelena"),
    Reminder(name: "Nahia", time: "10m ago", content: "i ate lunch ", numOfReact: 5, image:"profilePic"),
    Reminder(name: "luis", time: "30m ago", content: "i just prayed", numOfReact: 5, image:"luis"),
    Reminder(name: "neville", time: "38m ago", content: "i showered ", numOfReact: 5, image:"neville"),
    Reminder(name: "Nahia", time: "50m ago", content: "i drank water ", numOfReact: 5, image:"profilePic"),
    Reminder(name: "justine", time: "1h ago", content: "i finished coding ", numOfReact: 5, image:"justine"),
    Reminder(name: "Casper", time: "1h ago", content: "just prayed Duhur", numOfReact: 3, image:"casper"),
    Reminder(name: "Casper", time: "3h ago", content: "ate breakfast", numOfReact: 3, image:"casper"),
    Reminder(name: "Nahia", time: "4h ago", content: "visited my family ", numOfReact: 5, image:"profilePic"),
    Reminder(name: "Casper", time: "1d ago", content: "finished my assignment", numOfReact: 3, image:"casper"),
    Reminder(name: "Casper", time: "2d ago", content: "walked for 30 min", numOfReact: 3, image:"casper"),
    Reminder(name: "Casper", time: "3d ago", content: "I just ate lunch", numOfReact: 6, image:"casper")
    
]

