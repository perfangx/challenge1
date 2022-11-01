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
                Color.white
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 10)
                        .background(LinearGradient(colors: [.purple.opacity(0.5), .blue.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    VStack {
                        
                        NavigationView {
                            VStack(spacing: 100) {
                                
                                VStack(spacing:16) {
                                    
                                    SecureField("Current Password", text:$currentpassword )
                                        .textFieldStyle(.roundedBorder)
                                    
                                    SecureField("new Password", text:$newpassword )
                                    .textFieldStyle(.roundedBorder)
                                    
                                    SecureField("Confirm Password", text:$confirmpassword )
                                        .textFieldStyle(.roundedBorder)
                                    
                                }
                                
                                Button("Save"){
                                    
                                }
                                .padding()
                                .foregroundColor(.white)
                                .frame(width: 350 ,height: 50)
                                .background(.purple.opacity(0.9))
                                .opacity(0.9)
                                .cornerRadius(10)
                                .border(Color(.clear))
                                .font(.system(size: 16, weight: .bold))
                            }
                            .padding(.horizontal, 15)
                            .navigationTitle("Updating Password")
                            //.ignoresSafeArea()
                            Spacer()
                            
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
