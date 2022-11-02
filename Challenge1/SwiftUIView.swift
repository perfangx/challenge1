//
//  SwiftUIView.swift
//  Generalsetting
//
//  Created by Mashael Alharbi on 28/10/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Image("logo")
                
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y:-10)
                .frame(width:300, height:300)
                .padding()
            
            NavigationView {
                VStack (spacing: 30) {
                    
                    Text("If you need help in something you can contact with us via email :")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text("( Scratchs@gmail.com ).")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                        .accentColor(.pink)
                    
                    Text("Did you know that Ministry of health in Saudi Arabia had launched a call center service to people with depression and anxiety by providing Comprehensive primary psychological services via number:")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text("( 920033360 )")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                        
                    
                    
                    Text("Remember you are not alone 💕")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                }
                
            }
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .environment(\.sizeCategory, .extraSmall)
    }
}
