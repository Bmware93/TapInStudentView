//
//  TapInSurvey2.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 3/15/23.
//

import SwiftUI

struct TapInSurvey2: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .top, endPoint: .trailing)
                .ignoresSafeArea(.all)
            
            VStack {
                
                //Spacer()
                
                Text("how did you")
                    .font(.system(size: 45, design: .rounded).weight(.regular))
                    .foregroundColor(.white)
                    .padding(.top, 35)
                   
                
                Text("sleep")
                    .font(.system(size: 45, design: .rounded).weight(.regular))
                    
                    .foregroundColor(.white)
                    
                
                Image("surveyImage2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 80)
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
                        .foregroundColor(Color("ButtonColor2"))
                        .background(Color.white)
                        .font(.system(size: 20, weight: .medium))
                        .cornerRadius(40)
                        .font(.title3)
                }
                .padding(20)
                .padding(.bottom)
            }
            
        }
    }
}

struct TapInSurvey2_Previews: PreviewProvider {
    static var previews: some View {
        TapInSurvey2()
    }
}
