

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            
            
            Rectangle()
                .fill(Color.clear)
                .background(LinearGradient(colors: [.purple.opacity(0.1), .blue.opacity(0.1)],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                )
            VStack{
                Image("logo")
                
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y:-100)
                    .frame(width:300, height:300)
                    .padding(.top,10.0)
                
            }
            
            
            
            
            HStack(){
                
                
                Text("\"You scratch my back and I’ll scratch yours\"")
                    .fontWeight(.ultraLight)
                    .font(.custom("Marker Felt", fixedSize: 19 ))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Color"))
                    .padding(.top, 150.0)
                
            }
            
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}


