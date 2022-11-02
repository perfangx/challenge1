//
//  FriendList.swift
//  Challenge1
//
//  Created by roba on 29/10/2022.
//

import SwiftUI


//identifier for the users
struct friend: Identifiable {
    let id = UUID()
    let name : String
    let username: String
    let bio: String
    let image: String
}
//list of users
var friendList = [
    friend(name: "Caspar", username: "@caspar12", bio: "photography", image:"casper"),
    friend(name: "Jelena", username: "@jelenareal", bio: "hi",image:"jelena"),
    friend(name: "Luis", username: "@luis22", bio: "idk what to say",image:"luis"),
    friend(name: "Justin", username: "@justjus", bio: "well...",image:"justine"),
    friend(name: "Nado", username: "@nadona", bio: "Y.O.L.O",image:"nado"),
    friend(name: "Neville", username: "@neville101", bio: "photography",image:"neville"),
    friend(name: "Mar", username: "@marram", bio: "i need friends",image:"mar"),
    friend(name: "Jullian", username: "@jullycute", bio: "living my best life",image:"julian"),
    friend(name: "Lew", username: "@lew16", bio: "photography",image:"lew"),
    friend(name: "alexa", username: "@realalexa", bio: "Hi! lets be friends",image:"alexa")
]
