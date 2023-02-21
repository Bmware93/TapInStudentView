//
//  SplashPage.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/20/23.
//

import SwiftUI

struct SplashPage: View {
    var body: some View {
        ZStack {
            Color("TapInPrimary")
                .ignoresSafeArea(.all)
            
            VStack {
                Image("SplashPageLogo")
                    .resizable()
                    .scaledToFit()
                    .padding(65)
                
                Spacer()
                    .frame(height: 250)
            }
            
        }
        
    }
}

struct SplashPage_Previews: PreviewProvider {
    static var previews: some View {
        SplashPage()
    }
}
