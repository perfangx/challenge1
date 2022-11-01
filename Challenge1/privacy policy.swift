//
//  privacy policy.swift
//  Generalsetting
//
//  Created by Mashael Alharbi on 29/10/2022.
//

import SwiftUI

struct privacy_policy: View {
    var body: some View {
        VStack {
            Image("logo")
            
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y:-10)
                .frame(width:300, height:300)
                .padding()
            
            NavigationView {
                VStack (spacing:1) {
                    
                        
                        Text("It’s really hard to make everyone happy with a Privacy Policy , Most people who use Scratch want something short and easy to understand.")
                            .font(.callout)
                            .padding()
                        
                        Text("at least know this:                                                      1. Scratch is a public platform.                                 2. We collect some data about you.                        3. We use your data to make Scratch better.         4. You can control your experience ")
                            .font(.callout)
                            .padding()
                        
//                        Text("Fore more informations visit:")
//                            .font(.callout)
//                            .multilineTextAlignment(.center)
//                            .padding()
                        
                        Text("( https://scratch.com/en/privacy)")
                            .font(.body)
                            .fontWeight(.heavy)
                         
                    }
            
                .navigationTitle("Our Privacy Policys")
                .font(.callout)
                
                .accentColor(.black)
            }
        }
    }
}
        
struct privacy_policy_Previews: PreviewProvider {
    static var previews: some View {
        privacy_policy()
    }
}
