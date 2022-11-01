//
//  Delete account.swift
//  Generalsetting
//
//  Created by Mashael Alharbi on 30/10/2022.
//

import SwiftUI

struct Delete_account: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 10)
                        .background(LinearGradient(colors: [.purple.opacity(0.5), .blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        Spacer()
                    
                    VStack {
                        
                        
                        Text("We will miss you :(")
                            .font(.title)
                        
                        Spacer()
                        Text("Are you sure you want to Delete you account?")
                            .fontWeight(.bold)
                    
                        HStack {
                            
                            Button("Yes") {
                            }
                            
                            .foregroundColor(.white)
                            .frame(width: 150 ,height: 50)
                            .background(Color.red.opacity(0.8))
                            .opacity(0.9)
                            .cornerRadius(10)
                            .border(Color(.clear))
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                            
                            Button("No") {
                                
                            }
                            .foregroundColor(.white)
                            .frame(width: 150 ,height: 50)
                            .background(Color.green.opacity(0.8))
                            .opacity(0.9)
                            .cornerRadius(10)
                            .border(Color(.clear))
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}
struct Delete_account_Previews: PreviewProvider {
    static var previews: some View {
        Delete_account()
    }
}
