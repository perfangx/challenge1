//
//  loginPage.swift
//  Challenge1
//
//  Created by roba on 27/10/2022.
//

import SwiftUI

struct loginPage: View {
    //declare the fullscreen for homepage
    @State private var isPresentedFullScreenCover = false
    @State private var isPresentedForgetPassword = false
    @State  private var Username = ""
    @State  private var Password = ""
    var body: some View {
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
                
                VStack(spacing:15)
                {
                    
                    Image("image")
                        .resizable()
                        .offset(y:-10)
                        .frame(width:230, height:164)
                        .padding(.top,10)
                    Text("Log In")
                        .foregroundColor(Color("Color"))
                        .font(.system(size: 36))
                   
                    
                    TextField("Username" , text: $Username)
                    
                        .padding()
                        .frame(width:307,height:44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color"), lineWidth: 1))
                    
                    
                    SecureField("Password" , text: $Password)
                        .padding()
                        .frame(width:307,height:44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color"), lineWidth: 1))
                    
                    Button("Log in", action: {
                        
                        isPresentedFullScreenCover = true
                        
                        setTheValues ()
                        
                    })
                    
                    .frame(width:307 , height:44 )
                    .foregroundColor(.white)
                    .background(Color("Color"))
                    .cornerRadius(8)
                    
                    
                    
                    
                    Spacer()
                    
                        .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                            
                            
                            homePage(CurrentUser: currentUser)
                        }
                    NavigationLink(destination:         forgetPass(), label:{
                        Text("Forgot password?")
                            .font(.system(size: 14))
                            .foregroundColor(.blue)
                          
                    })
                    HStack{
                        
                        Text("Dont have an account?")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        NavigationLink(destination:         signupPage(), label:{
                            Text("Create one")
                                .font(.system(size: 14))
                                .foregroundColor(.blue)
                              
                        })
                    }
                    //**** END PAGE CONTENT HERE*****
                    Spacer()
                    Spacer()
                }

            }
            
            
            
        }
    }
    
    func setTheValues ()
    {
        currentUser.name = Username
        currentUser.userName = Username
        currentUser.password = Password
        
        
    }
    
}


struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}

