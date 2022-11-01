//
//  homePage.swift
//  Challenge1
//
//  Created by roba on 27/10/2022.
//

import SwiftUI

struct homePage: View {
    @State var CurrentUser = User()
    var body: some View {
        NavigationView(){
            ZStack {
                VStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 10)
                        .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)],
                                                   startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    
                    Spacer()
                    
                    //****START PAGE CONTENT HERE*****
                    Text("this is homepage")
                    
                    //**** END PAGE CONTENT HERE*****
                    
                                Spacer()
                }
             
                .toolbar{

                    NavigationLink(destination: profilePage(CurrentUser: currentUser), label:{
                        Label("Profile", systemImage: "person.circle")
                    })

                }
               
            }
            //.navigationTitle("Scratch")
            .navigationBarTitle("Scratch", displayMode: .inline)
            .font(.system(size: 20))
        }
        .accentColor(Color("Color"))
        
    }
}

struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
