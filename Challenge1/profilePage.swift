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
                            .foregroundColor(.blue)
                           // .offset(y:-60)
                       
                    })
                     
                    
                    Text(CurrentUser.name)
                        .font(.title)

                    Text("@"+CurrentUser.userName)
                        
                    Text(CurrentUser.bio)

                       
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
                    
                
                }
//                .offset(y:-60)
            
            }
            
            
        }
    }
    
    enum SideOfThForce: String, CaseIterable{
        case Myscratch = "My scratch"
        case Friends = "Friends"
        
    }
    
    struct ChosenHeroView: View {
        
        @State var searchText: String = ""
        var selectedSide: SideOfThForce
        
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        var body: some View{
            switch selectedSide{
                
                // **** CASE 1 : MY SCRATCH ****
            case .Myscratch:
                VStack(spacing: 10){
                    Text("my scratch")
                        .frame(maxWidth: .infinity, alignment: .leading)                    .fontWeight(.light)
                        .padding(.leading)
                        .font(.title3)
                        .foregroundColor(Color("Color"))
                    Rectangle()
                        .fill(Color("Color"))
                        .frame(height:1)
                        .padding(.horizontal,20)
                    Spacer()
                    
                    List(Reminderlist){Reminder in RemainderRow(eachRemainder: Reminder).swipeActions{
                        Button(role: .destructive){
                        } label: {
                            Label("Delete", systemImage: "trash.circle")
                        }
                    }
                    }
                }
                
                // **** CASE 2 : FRIENDS ****
                
            case .Friends:
                VStack{
                    ScrollView(.vertical){
                    VStack (spacing: 10) {
                        
                        Text("Friend Request")
                            .frame(maxWidth: .infinity, alignment: .leading)                    .fontWeight(.light)
                            .padding(.leading)
                            .font(.title3)
                            .foregroundColor(Color("Color"))
                        Rectangle()
                            .fill(Color("Color"))
                            .frame(height:1 )
                            .padding(.horizontal,20)
                        
                       // *** friend rec ***
                        
                        HStack {
                            Image("profilePic")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 65, height: 65)
                                .cornerRadius(8)
                            VStack(alignment: .leading) {
                                Text("Lubosek")
                                    .font(.title3)
                                Text("@Lubosek18")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Button("Reject") {}
                                .buttonStyle(.bordered)
                                .foregroundColor(Color("Color"))
                            
                            //  .background(Color.gray)
                            
                            
                            Button("Accept") {}
                                .buttonStyle(.borderedProminent)
                            //  .background(Color("Color"))
                                .foregroundColor(Color(.white))
                        }
                       
                      
                        .padding(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color"), lineWidth: 1)
                                .frame(width:365,height:90)
                               
                        )
            
                        
                        
                        Text("Myfriend")
                            .frame(maxWidth: .infinity, alignment: .leading)                    .fontWeight(.light)
                            .padding(.leading)
                            .font(.title3)
                            .foregroundColor(Color("Color"))
                        Rectangle()
                            .fill(Color("Color"))
                            .frame(height:1 )
                            .padding(.horizontal,20)

                        HStack{
                            
                            HStack{
                                Image(systemName: "magnifyingglass")
                                TextField("Search", text: $searchText)
                            }
                            .padding(5)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color(.white))
                                    .shadow(radius: 2, x: 0, y: 0)
                            )
                            
                            //add friend button
                            NavigationLink(destination: addFriend(friendToadd: friendList), label:{
                                Image(systemName: "person.crop.circle.badge.plus")
                                    .bold()
                                    .font(.system(size: 25))
                                
                            })
                            
                        }
                        .padding()
                    }
                    ScrollView(.vertical){
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(friendList) { friend in friendRow1(eachFriend: friend)
                            }
                            }
                        }
                    }
                }
           
            }
        }
        
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
                 
                }
            }
            
            
            
        }
        
    }



struct profilePage_Previews: PreviewProvider {
    static var previews: some View {
        profilePage()
    }
}
