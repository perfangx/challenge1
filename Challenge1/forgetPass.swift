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
                
                VStack {
                    
                    
                    Color.white
                        .ignoresSafeArea(edges: .all)
                    
                    
                    VStack {
                        
                       
                        VStack(spacing: 10) {
                            TextField("Email", text: $email, prompt: Text("Enter email..."))
                                .font(.title2)
                                .textFieldStyle(.roundedBorder)
                                .autocapitalization(.none)
                            
                        }
                        .padding()
                        .padding(.bottom, 8.0)
                        
                        VStack(spacing: 16) {
                        
                            Button {
                                print("email: \(email)")
                                
                            } label: {
                                Text("Reset password")
                                    .frame(maxWidth: .infinity)
                                    .font(.title2)
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(.purple.opacity(0.9))
                            .cornerRadius(16)
                            
                        }
                        .padding()
                        
                        Spacer()
                        
                    }
                    
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
