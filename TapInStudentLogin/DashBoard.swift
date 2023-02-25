//
//  SignInScreen.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/23/23.
//

import SwiftUI

struct DashBoard: View {
    
    var body: some View {
        ZStack {
            Color("TapInPrimary")
                .ignoresSafeArea(.all)
        
                VStack{
                    
                    //Spacer()
                    
                    HStack(alignment:.center ,spacing: 20) {
                        
                    Text("Mike's Dashboard")
                            .font(.system(size: 35, design: .rounded).weight(.medium))
                            .padding(.leading)
                        
                        
                        Button {
                            print("Button was Tapped")
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.gray)
                        }
                }
                    .padding(.bottom, 50)
                    
                   
                    Button {
                       print("Student Taped In")
                        
                    } label:   {
                        Image("SplashPageLogo")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                            .frame(width: 300, height: 300)
                        }
                    
                    Text("Complete your daily Tap In to view your survey results")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 10)
                    
                    }
            
                    Spacer()
            
        }
        
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashBoard()
    }
}
