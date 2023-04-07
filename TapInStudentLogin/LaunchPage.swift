//
//  SplashPage.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/20/23.
//

import SwiftUI

struct LaunchPage: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color("TapInPrimary")
                    .ignoresSafeArea(.all)
                
                VStack {
                    Image("SplashPageLogo")
                        .resizable()
                        .scaledToFit()
                        .padding(70)
                    
                    Spacer()
                        .frame(height: 150)
                    
                    NavigationLink(destination: StudentLockScreen()) {
                        Text("Sign In")
                            .frame(minWidth: 0, maxWidth: 300)
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("Gradiant1"), Color("Gradiant2")]), startPoint: .trailing, endPoint: .leading))
                            .cornerRadius(40)
                            .font(.title3)
                    }
                  
                    HStack(spacing: 10) {
                        
                        Text("Don't have an account?")
                            .foregroundStyle(.secondary)
                            .padding(.top)
                        
                        NavigationLink("Sign Up", destination: SignUpScreen())
                            .foregroundColor(Color("Gradiant1"))
                            .padding(.top)
                            
                    }
                    Spacer()
                        .frame(height: 50)
                }
                
            }
        }
        
    }
}

struct SplashPage_Previews: PreviewProvider {
    static var previews: some View {
        LaunchPage()
    }
}
