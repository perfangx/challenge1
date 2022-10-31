//
//  forgetPass.swift
//  p1
//
//  Created by Lamia Aldossari on 29/10/2022.
//

import SwiftUI

struct forgetPass: View {
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 10)
                    .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)],
                                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                
                VStack(spacing:15) {
                    
//                    Label("lock", systemImage: "lock.circle")
                    Image(systemName: "lock.circle")
                        .foregroundColor(Color("Color"))
                        .font(.system(size: 100))
                    Text("Trouble logging in?")
                        .foregroundColor(Color("Color"))
                        .font(.system(size: 36))
                        
                    

                    Text("Enter your username or email and we’ll send you a link to get back into your account.")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 12))
                        .padding(20)
                    
                        
                        
                        TextField("username or email" , text: $email)
                            .padding()
                            .frame(width:307,height:44)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color("Color"), lineWidth: 1))
                        
                        
                        Button {
                            print("email: \(email)")
                            
                        } label: {
                            Text("Reset password")
                                .frame(width:307 , height:44 )
                                .foregroundColor(.white)
                                .background(Color("Color"))
                                .cornerRadius(8)
                            
                            
                        }
                        
                   
                    .padding()
                    
                    Spacer()
                    
                    
                    
                }
                
                .navigationTitle("Reset Password")
                Color(.white)
            }
        }
        
    }
}

struct forgetPass_Previews: PreviewProvider {
    static var previews: some View {
        forgetPass()
    }
}
