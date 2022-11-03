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
                    
                    Text("( Scratchs@gmail.com ).")
                        .font(.headline)
                        .foregroundColor(Color.purple)
                        .accentColor(.pink)
                    
                    Text("Did you know that Ministry of health in Saudi Arabia had launched a call center service to people with depression and anxiety by providing Comprehensive primary psychological services via number:")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    
                    Text("( 920033360 )")
                        .font(.headline)
                        .foregroundColor(Color.pink)
                    
                    
                    Text("Remember your not alone 💕")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.pink)
                }
            
               
            }
            .padding(20)
            
        }
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .environment(\.sizeCategory, .extraSmall)
    }
}
