//
//  signupPage.swift
//  Challenge1
//
//  Created by roba on 27/10/2022.
//

import SwiftUI

struct signupPage: View {
    //declare the fullscreen for homepage
    @State  private var isPresentedFullScreenCover = false
    @State  private var Name = ""
    @State  private var Username = ""
    @State  private var email = ""
    @State  private var Password = ""
    @State  private var confirmPassword = ""
    
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 10)
                    .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)],
                                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                
                //  Spacer()
                
                //****START PAGE CONTENT HERE*****
                
                VStack(spacing:15){
                    
                    Image("image")
                    
                        .resizable()
                        .offset(y:-10)
                        .frame(width:230, height:164)
                        .padding(.top,10)
                    
                    Text("Create account")
                        .foregroundColor(Color("Color"))
                        .font(.system(size: 36))
                        .padding()
                    
                    TextField("Name" , text: $Name)
                        .padding()
                        .frame(width:307,height:44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color"), lineWidth: 1))
                    
                    TextField("Username" , text: $Username)
                        .padding()
                        .frame(width:307,height:44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color"), lineWidth: 1))
                    
                    TextField("Email" , text: $email)
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
                    
                    SecureField("Confirm password" , text: $confirmPassword)
                        .padding()
                        .frame(width:307,height:44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color"), lineWidth: 1))
                    
                    Button("Create", action: {
                        isPresentedFullScreenCover = true
                        setTheValues()
                    })
                    .frame(width:307 , height:44 )
                    .foregroundColor(.white)
                    .background(Color("Color"))
                    .cornerRadius(8)
                    .fontWeight(.semibold)
                    .fullScreenCover(isPresented: $isPresentedFullScreenCover) {
                        // homePage()
                        homePage(CurrentUser: currentUser)
                    }
                    //**** END PAGE CONTENT HERE*****
                    Spacer()
                }
            }
            
        }
        
    }
    func setTheValues ()
    {
        currentUser.name = Name
        currentUser.userName = Username
        currentUser.password = Password
        currentUser.email = email
        
        
    }
}

struct signupPage_Previews: PreviewProvider {
    static var previews: some View {
        signupPage()
    }
}
