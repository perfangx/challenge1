//
//  editProfile.swift
//  Challenge1
//
//  Created by roba on 28/10/2022.
//

import SwiftUI

struct editProfile: View {
    @State var CurrentUser = User()
    @State private var name = ""
    @State private var bio = ""
    @State private var birthdate = Date()
    
    var body: some View {
        ZStack{
            VStack{
                //background
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 10)
                    .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)],

                                               startPoint: .topLeading, endPoint: .bottomTrailing))
                
                
                
                ZStack{
                    Image("profilePic")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                      //  .offset(y:-60)
                    Image(systemName: "camera")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 24)
                       // .offset(y:-60)
                }
                
                VStack(alignment: .center,spacing: 10){
                    Text(CurrentUser.name)
                        .font(.title2)
                        .font(.custom("Helvicta", fixedSize: 20))
    
                    

                    Text("@"+CurrentUser.userName)
                        .font(.custom("Helvicta", fixedSize: 16))
    
                    Text(CurrentUser.bio)
                        .font(.custom("Helvicta", fixedSize: 16 ))
                    
    
                    //edit profile form
                    Form{
                        Section(header: Text("Edit Profile")){
                            TextField("Name", text: $name)
                            DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                            TextField("Bio", text: $bio)
                        }
                        Button("Save", action: {
                                                
                            setTheValues ()
                            
                        })
                        
                        .frame(width:307 , height:44 )
                        .foregroundColor(.white)
                        .background(Color("Color"))
                        .cornerRadius(8)
                        .font(.system(size: 20, weight: .semibold))
                    }
                    .scrollContentBackground(.hidden) //to remove grey bg
                }
               // .accentColor(.purple)
                
                //.navigationTitle("Edit Profile")
              //  .offset(y:-60)
            }
            
        }
    }
    func setTheValues ()
    {
        currentUser.name = name
        currentUser.bio = bio
        
        
    }
}

struct editProfile_Previews: PreviewProvider {
    static var previews: some View {
        editProfile()
    }
}
