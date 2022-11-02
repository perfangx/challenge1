//
//  addFriend.swift
//  Challenge1
//
//  Created by roba on 28/10/2022.
//

import SwiftUI
struct addFriend: View {
    var friendToadd: [friend]
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 10)
                    .background(LinearGradient(colors: [.purple.opacity(0.2), .blue.opacity(0.3)],

                                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                
                
                
                
                
                
                //****START PAGE CONTENT HERE*****
                
                
                List(searchResults){friend in friendRow(eachFriend: friend)}
                
                    .searchable(text: $searchText, placement:.navigationBarDrawer( displayMode: .always))
                    .scrollContentBackground(.hidden) //to remove grey bg
                    .navigationTitle("add Friend")
                //**** END PAGE CONTENT HERE*****
            }
            
        }
    }
    
    var searchResults: [friend] {
        if searchText.isEmpty {
            return friendToadd
        } else {
            return friendToadd.filter { $0.name.contains(searchText) }
        }
    }
}


//each friend request row
struct friendRow: View {
    var eachFriend: friend
    var body: some View{
        HStack {
            Image(eachFriend.image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 65, height: 65)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(eachFriend.name)
                    .font(.headline)
                    .fontWeight(.medium)
                Text(eachFriend.username)
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button("Add") {}
                .buttonStyle(.borderedProminent)
            
        }
    }
}



struct addFriend_Previews: PreviewProvider {
    static var previews: some View {
        addFriend(friendToadd: friendList)
    }
    
}
