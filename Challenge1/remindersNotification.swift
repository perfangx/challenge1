//
//  remindersNotification.swift
//  Challenge1
//
//  Created by roba on 30/10/2022.
//

import SwiftUI
import UserNotifications

struct remindersNotification: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                //this will request authorization to show alerts
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }

            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Scratch!"
                content.subtitle = "Roba just prayed Fajur! , dont forget to do that too"
                content.sound = UNNotificationSound.default

                // show this notification five seconds from now
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct remindersNotification_Previews: PreviewProvider {
    static var previews: some View {
        remindersNotification()
    }
}
