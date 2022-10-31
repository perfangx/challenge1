//
//  profilePage.swift
//  Challenge1
//
//  Created by roba on 27/10/2022.
//

import SwiftUI

struct profilePage: View {
    @State private var selectedSide: SideOfThForce = .Myscratch
    @State var CurrentUser = User()
    
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
                        NavigationLink(destination: settingsPage(), label:{
                            Label("Settings", systemImage: "gearshape")
                        })
                    }
               
                    //****START PAGE CONTENT HERE*****
                    
            
                  
                
                VStack(alignment: .center,spacing: 10){
                    Image("profilePic")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                     
               
                    //edit profile button
                    NavigationLink(destination: editProfile(CurrentUser: currentUser), label:{
                        Text("Edit")
                           // .buttonStyle(.bordered)
                           // .frame(width: 40)
                            .bold()
                           // .offset(y:-60)
                       
                    })
                     
                    
                    Text(CurrentUser.name)
                        .font(.title)

                    Text("@"+CurrentUser.userName)
                        
                    Text(CurrentUser.bio)

                       
                    //
                    //NavigationView(){
                        VStack{
                            Picker("choose a side ", selection: $selectedSide){
                                ForEach(SideOfThForce.allCases, id: \.self){
                                    Text($0.rawValue)
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .padding()
                            

                            ChosenHeroView(selectedSide: selectedSide)
                           
                        }
                    
                        
                        
                 //   }
                                    
                
                  //  .navigationTitle("Profile")
                    //**** END PAGE CONTENT HERE*****
                }
                .offset(y:-60)
            
            }
            
            
        }
    }
    
    enum SideOfThForce: String, CaseIterable{
        case Myscratch = "My scratch"
        case Friends = "Friends"
        
    }
    
    struct ChosenHeroView: View {
        
        var selectedSide: SideOfThForce
        
        var body: some View{
            switch selectedSide{
            case .Myscratch:
                HeroImageView(heroName: "anakin")
                
                List(Reminderlist){Reminder in RemainderRow(eachRemainder: Reminder).swipeActions{
                    Button(role: .destructive){
                    } label: {
                        Label("Delete", systemImage: "trash.circle")
                    }
                }
                }
                
                

            case .Friends:
                HeroImageView(heroName: "anakin")
                VStack {
                    
                    VStack() {

                        Text("Freinds Request")
                            .fontWeight(.light)

                        HStack{
                            Image("profilePic")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 68 ,height: 68)
                                .cornerRadius(8)
                                .offset(y:2)
                                .padding()

                            VStack(alignment: .leading, spacing: 2){
                                Text("Lubosek")
                                    .font(.title2)
                                    .foregroundColor(.purple)
                                    .offset(y:2)
                                Text("@Lubosek18")
                                    .font(.callout)
                                    .foregroundColor(.blue)
                                    .offset(y:2)


                            }

                        }

                        .frame(width: 343, height: 81)
                        .background(Color.red)
                        .cornerRadius(17)
                        .padding()
                    }
                    
                    
                    
                    Spacer()
                }
                //add friend button
                NavigationLink(destination: addFriend(friendToadd: friendList), label:{
                    Text("go add friends")
                        .bold()
                })
                
                List(friendList){
                    friend in friendRow1(eachFriend: friend)
                }

                Spacer()
            }
            
        }
        
    }
}

    
    struct  HeroImageView: View{
        var heroName: String
        var body: some View{
            Image("profail")
            //                .resizable()
            //                .frame(width: 250, height: 400)
            //                .shadow(radius: <#T##CGFloat#>)
            
            
            
        }
        
    }
    
    
    struct friendRow1: View {
        var eachFriend: friend
        var body: some View{
            HStack{
                VStack(spacing:1){
                    Image(eachFriend.image)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 69 ,height: 69)
                        .cornerRadius(8)
                        .padding()
                    Text(eachFriend.name)
                    
                    
                }
                
            }
        }
    }
    
    struct RemainderRow: View {
        var eachRemainder: Reminder
        var body: some View{
            
            HStack(alignment:.top){
                Image(eachRemainder.image)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50,height:50)
                
                
                VStack(alignment:.leading){
                    HStack{
                        Text(eachRemainder.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
                            .padding(10)
                        Spacer()
                        Text(eachRemainder.time)
                            .font(.caption)
                            .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
                    }
                    .padding(.top,5)
                    
                    Text(eachRemainder.content)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 10)
                    
                    //                ReminderActions(reminder: reminder)
                    //                    .foregroundColor(.gray)
                }
            }
            
            
            
        }
        
    }



struct profilePage_Previews: PreviewProvider {
    static var previews: some View {
        profilePage()
    }
}
