//
//  startPage.swift
//  Challenge1
//
//  Created by roba on 30/10/2022.
//

import SwiftUI

struct startPage: View {
    var body: some View {
        NavigationView(){
            ZStack {
                Rectangle()
                    .fill(Color.clear)
                    .background(LinearGradient(colors: [.purple.opacity(0.1), .blue.opacity(0.2)],
                                               startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    )
                VStack{
                    Image("logo")
                    
                        .resizable()
                        .offset(y:-200)
                        .frame(width:300, height:300,alignment: .center)
                        .padding()
                    
                }
                VStack (spacing: 10) {
                    
                    //****START PAGE CONTENT HERE*****
                    
                    
                    Text("\"You scratch my back and I’ll scratch yours\"")
                    
                        .fontWeight(.ultraLight)
                        .font(.custom("Marker Felt", fixedSize: 19 ))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Color"))
                        .offset(y:-50)
                        .padding(.top,350)
                    
                    
                    //first button link
                    NavigationLink(destination: loginPage(), label:{
                        Text("Log in")
                            .foregroundColor(Color("Color"))
                            .padding()
                            .fontWeight(.semibold)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color("Color"), lineWidth: 1)
                                    .frame(width:307,height:44)
                            )
                        
                    })
                    //second button link
                    NavigationLink(destination: signupPage(), label:{
                        Text("Create account")
                        
                            .frame(width:307 , height:44 )
                            .foregroundColor(.white)
                            .background(Color("Color"))
                            .background(.white)
                            .cornerRadius(8)
                            .fontWeight(.semibold)
                    })
                    HStack(spacing:15){
                        
                        Rectangle()
                            .fill(Color("Color"))
                            .frame(height:1)
                            .padding(.horizontal,20)
                        
                        Text("or")
                            .foregroundColor(Color("Color"))
                        
                        Rectangle()
                            .fill(Color("Color"))
                            .frame(height:1)
                            .padding(.horizontal,20)
                        
                    }
                    HStack{
                        Button("Continue with Apple"){}
                        Image(systemName: "apple.logo")
                    }
                    .frame(width:307 , height:44 )
                    .foregroundColor(.white)
                    .background(Color(.lightGray))
                    .background(.white)
                    .cornerRadius(8)
                    .padding(.bottom)
                    .fontWeight(.semibold)
                    HStack{
                        
                        Text("By signing up you agree to our")
                        
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        NavigationLink(destination:         privacy_policy(), label:{
                            Text("Terms , Privacy Policy")
                                .font(.system(size: 14))
                                .foregroundColor(.blue)
                            
                        })
                      
                    }
                    
                    
                    //**** END PAGE CONTENT HERE*****
                }
                //.navigationTitle("Start page")
                .navigationBarHidden(true)
                .padding()
                
            }
            
        }
        .accentColor(Color("Color"))
    }
}

struct startPage_Previews: PreviewProvider {
    static var previews: some View {
        startPage()
    }
}
