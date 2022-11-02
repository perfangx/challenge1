//
//  friendProfile.swift
//  Challenge1
//
//  Created by roba on 31/10/2022.
//

import SwiftUI

struct friendProfile: View {
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 10)
                    .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)],
                                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                
                
                //this one if for the settings navigation,
                //even tho u cant view it here its there
                
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            Menu {
                                Button(action: {}, label: {
                                    Text("Remove Friend")
                                        .foregroundColor(.red)
                                        .tint(.red)
                                    
                                })
                                .tint(.red)
                                
                                Button(action: {}, label: {
                                    Text("Block")
                                        .foregroundColor(.red)
                                    
                                })
                                
                            }
                            
                            
                        label: {
                            Label (
                                title: {Text("more")},
                                icon: {Image(systemName: "ellipsis") }
                            )
                        }
                            
                        }
                    }
                
                //****START PAGE CONTENT HERE*****
                
                
                
                
                VStack(alignment: .center,spacing: 10){
                    Image("casper")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                    
                    Text("Friend")
                        .font(.custom("Helvetica", fixedSize: 20 ))
                        .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
                    Text("@Friend")
                        .font(.custom("Helvetica", fixedSize: 16 ))
                    Text("friend bio")
                    Spacer()
                    Text("my scratches:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color("Color"))
                    
                    //                        Rectangle()
                    //                            .fill(Color("Color"))
                    //                            .frame(height:1)
                    //                            .padding(.horizontal,20)
                    Spacer()
                    
                    List(Reminderlist.filter { $0.name.contains("Casper")}){Reminder in RemainderRow(eachRemainder: Reminder)
                        
                    }
                    
                }
                
                
                
                
                
            }
            
        }
        
        
    }
}

struct friendProfile_Previews: PreviewProvider {
    static var previews: some View {
        friendProfile()
    }
}
