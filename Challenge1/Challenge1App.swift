//
//  Challenge1App.swift
//  Challenge1
//
//  Created by roba on 27/10/2022.
//

import SwiftUI

@main
struct Challenge1App: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("Color"))]
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
