//
//  TapInSurvey4.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 3/16/23.
//

import SwiftUI

struct TapInSurvey4: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .top, endPoint: .trailing)
                .ignoresSafeArea(.all)
            
            VStack {
                
                Text("this or that")
                    .font(.system(size: 45, design: .rounded).weight(.regular))
                    .foregroundColor(.white)
                    .padding(.top, 35)
                    
                HStack {
                    Image("surveyImage3")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Image("surveyImage4")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(height:238)
                }
                
                Spacer()
                
                Button {
                 
                } label: {
                    Text("Skip")
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

struct TapInSurvey4_Previews: PreviewProvider {
    static var previews: some View {
        TapInSurvey4()
    }
}
