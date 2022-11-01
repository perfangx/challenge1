//
//  homePage.swift
//  Challenge1
//
//  Created by roba on 27/10/2022.
//




import SwiftUI
import BottomSheet

struct homePage: View {
    @State var CurrentUser = User()
    var body: some View {
        NavigationView(){
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

                    ContentOfAllReminders(reminders: Reminderlist)
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(Color("Color"))
                        .font(.system(size: 55))

                    //**** END PAGE CONTENT HERE*****

                                Spacer()
                }

                .toolbar{

                    NavigationLink(destination: profilePage(CurrentUser: currentUser), label:{
                        Label("Profile", systemImage: "person.circle")
                    })

                }

            }
            //.navigationTitle("Scratch")
            .navigationBarTitle("Scratch", displayMode: .inline)
            .font(.system(size: 20))
        }
        .accentColor(Color("Color"))

    }
}



struct ContentOfAllReminders : View{

    let reminders : [Reminder]

    var body: some View{

        List(reminders){
            reminder in ReminderView(reminder: reminder)
        }
        .listStyle(SidebarListStyle())
        .background(Color.white.ignoresSafeArea())
        .onAppear {
            // Set the default to clear
            UITableView.appearance().backgroundColor = .clear
        }
    }
}




//a struct for the design of each reminder
struct ReminderView : View{

    @State var reminder : Reminder
    @State var listOfReactionsIsShowing = false
    @State private var showingReactionSheet = false

    var body: some View{

        VStack {

            if listOfReactionsIsShowing{
                HStack{
                    Spacer()
                    ReactListView( reminder: $reminder, listOfReactionsIsShowing: $listOfReactionsIsShowing)
                }
            }

            HStack(alignment:.top){
                Image(reminder.image)
                    .resizable()
                    .frame(width: 50,height:50)
                    .clipShape(Capsule())
                VStack(alignment:.leading){
                    HStack{
                        Text(reminder.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
                            .padding(10)
                        Spacer()
                        Text(reminder.time)
                            .font(.caption)
                            .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
                    }
                    .padding(.top,5)
                    Text(reminder.content)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 10)

                    HStack{
                            Spacer()
                            Image(systemName: "face.smiling")
                                .resizable()
                                .frame(width: 20.0, height: 20.0)
                                .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
                                .onTapGesture(perform: {
                                    //                reminder.numOfReact += 1
                                    listOfReactionsIsShowing.toggle()
                                })
                                .padding(.trailing, 20)
                            HStack{
                                Text("♥️")
                                Text(reminder.numOfReact > 0 ? "\(reminder.numOfReact)" : "")
                            }.onTapGesture(perform: {
                                listOfReactionsIsShowing = false
                                showingReactionSheet.toggle()
                            })
                            .font(.system(size: 12))
                            .padding(4)
                            .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274, opacity: 25.0))
                            .background(Color(hue: 0.942, saturation: 0.095, brightness: 0.878))
                            .cornerRadius(5)
                    }
                    .bottomSheet(isPresented: $showingReactionSheet, detents: [.medium(), .large()]) {
                        ZStack{
                            Color(red: 0.9254901960784314, green: 0.9215686274509803, blue: 0.9372549019607843).edgesIgnoringSafeArea(.all)
                            seeAllReactionsSheet(reminder: $reminder)
                        }
                    }
                    }
            }
            .padding()
            .frame(width: 370, height: 140)
            .background(Color.white)
            .cornerRadius(17)
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 1, y: 1)
        }
    }
}


struct ReactListView : View{

    //    @Environment(\.dismiss) var dismiss
    @Binding var reminder : Reminder
    @Binding var listOfReactionsIsShowing : Bool

    var body: some View{
        HStack{
            Text("♥️").onTapGesture(perform: {
                reminder.numOfReact += 1
                listOfReactionsIsShowing.toggle()})
            Text("👍🏻")
            Text("👎🏻")
            Text("⏰")

        }
        .frame(width:150, height: 40)
        .background(Color(hue: 0.942, saturation: 0.095, brightness: 0.878))
        .cornerRadius(5)
    }

}


struct seeAllReactionsSheet : View{


    @Binding var reminder : Reminder
    var body: some View{
        VStack{
            HStack{
                Text("♥️ \(reminder.numOfReact)")

                Spacer()
            }
            .padding()
            List(friendList[1...reminder.numOfReact]){
            friend in whoReacted(eachFriend: friend)
        }
        .listStyle(SidebarListStyle())
        .onAppear {
            // Set the default to clear
            UITableView.appearance().backgroundColor = .clear
        }

        }
        }
    }




struct whoReacted: View {

    var eachFriend: friend

    var body: some View{
        HStack{
            Image(eachFriend.image)
                .resizable()
                .frame(width: 55,height:55)
                .clipShape(Capsule())
                .padding()
            Text(eachFriend.name)
                .font(.system(size: 22))
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.6705882352941176, green: 0.4235294117647059, blue: 0.5098039215686274))
            Spacer()
            Text("♥️")
                .padding()
        }
        .background(Color.white)
        .frame(width:380, height:70)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 1)
        )
        .padding(.bottom, 10)
    }
}





struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
