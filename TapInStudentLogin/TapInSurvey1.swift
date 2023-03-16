//
//  TapInSurvey1.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 3/15/23.
//

import SwiftUI

struct TapInSurvey1: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .top, endPoint: .trailing)
                .ignoresSafeArea(.all)
            
            VStack {
                
                //Spacer()
                
                Text("did you eat breakfast")
                    .font(.system(size: 48, design: .rounded).weight(.regular))
                    .foregroundColor(.white)
                    .padding(.top, 40)
                
                Image("surveyImage1")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 80)
                    .rotationEffect(.degrees(-180))
                    .padding(.bottom, 20)
                  
                
                HStack(alignment: .center, spacing: 50) {
                    
                    Button {
                        print("Button tapped")
                    } label: {
                        Image(systemName:"hand.thumbsdown.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    
                    Button {
                        print("Button pressed")
                    } label: {
                        Image(systemName:"hand.thumbsup.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                    }
                    
                }
                Spacer()
                
                Button {
                 
                } label: {
                    Text("I want to talk to someone")
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .padding(.horizontal, -15)
                        .foregroundColor(Color("Gradiant1"))
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium))
                        .cornerRadius(40)
                        .font(.title3)
                }
                .padding(20)
            }
            
        }
        
    }
}

struct TapInSurvey1_Previews: PreviewProvider {
    static var previews: some View {
        TapInSurvey1()
    }
}
