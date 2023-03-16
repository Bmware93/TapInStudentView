//
//  TapInSurvey3.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 3/16/23.
//

import SwiftUI

struct TapInSurvey3: View {
    
    @State var moodSlider: Double = 0
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .top, endPoint: .trailing)
                .ignoresSafeArea(.all)
            
            VStack {
                
                //Spacer()
                
                Text("how do you")
                    .font(.system(size: 45, design: .rounded).weight(.regular))
                    .foregroundColor(.white)
                    .padding(.top, 35)
                   
                
                Text("feel today")
                    .font(.system(size: 45, design: .rounded).weight(.regular))
                    
                    .foregroundColor(.white)
                    
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
                
                Slider(value: $moodSlider, in: 0...10)
                    .padding(30)
                    .accentColor(.black)
                  
         
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

struct TapInSurvey3_Previews: PreviewProvider {
    static var previews: some View {
        TapInSurvey3()
    }
}
