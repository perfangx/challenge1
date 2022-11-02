//
//  forget password.swift
//  Generalsetting
//
//  Created by Mashael Alharbi on 28/10/2022.
//

import SwiftUI

struct forget_password: View {
    @State private var currentpassword: String = ""
    @State private var newpassword: String = ""
    @State private var confirmpassword: String = ""
    @State var text: String
    @State var isSecure: Bool = true
    var body: some View {
        NavigationView {
            ZStack {
                    Group {
                                   if isSecure {
                                       SecureField(confirmpassword, text: $text)
                                   } else {
                                       TextField(newpassword, text: $text)
                                   }
                               }.padding(.trailing, 32)
                               Button {
                                   isSecure.toggle()
                               } label: {
                                Image(systemName: isSecure ? "lock.fill" : "lock.open")
                               }
//                Color.white
//                    .opacity(0.1)
//                    .ignoresSafeArea()
                VStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 10)
                        .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    VStack {
                        
                        NavigationView {
                            VStack(spacing: 15) {
                                
                                VStack(spacing:15) {
                                    
                                    Text("Updating Password")
                                        .foregroundColor(Color("Color"))
                                        .font(.system(size: 36))
                                        .padding()
                                    SecureField("Current Password", text:$currentpassword )
//                                        .textFieldStyle(.roundedBorder)
//
                                        .padding()
                                        .frame(width:307,height:44)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color("Color"), lineWidth: 1))
                                    
                                    SecureField("new Password", text:$newpassword )
//                                    .textFieldStyle(.roundedBorder)
                                        .padding()
                                        .frame(width:307,height:44)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color("Color"), lineWidth: 1))
                                    SecureField("Confirm Password", text:$confirmpassword )
//                                        .textFieldStyle(.roundedBorder)
                                        .padding()
                                        .frame(width:307,height:44)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color("Color"), lineWidth: 1))
                                }
                                
                                Button("Save"){
                                    
                                }
                                .frame(width:307 , height:44 )
                                .foregroundColor(.white)
                                .background(Color("Color"))
                                .cornerRadius(8)
                            
                            }
//                            .padding(.horizontal, 15)
//                            .navigationTitle("Updating Password")
                            .navigationBarHidden(true)
                            //.ignoresSafeArea()
//                            Spacer()
                            
                        }
                      
                        
                    }
                }
            }
        }
        }
            
            
            
            struct forget_password_Previews: PreviewProvider {
                static var previews: some View {
                    forget_password(text: "surrent password")
                }
            }
        }
