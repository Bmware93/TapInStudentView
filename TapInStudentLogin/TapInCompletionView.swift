//
//  TapInCompletionView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 4/24/23.
//

import SwiftUI

struct TapInCompletionView: View {

    @State var wellbeingFactor = "Tap In Completion"
    @State var tapInCompletetion = 95
    
    
    var body: some View {
            HStack(spacing: 0.0) {
                VStack {
                    HStack {
                        Spacer()
                  
                        
                    }
                    
                    Text("\(tapInCompletetion)%")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding([.bottom,.leading,.trailing])
                }
                .padding()
                .background {
                    Rectangle()
                        .fill (
                            DashCardColor
                        )
                }
                //.padding(.horizontal)
                
                HStack {
                    Spacer()
                    VStack{
                        Text("\(wellbeingFactor)")
                            .multilineTextAlignment(.center)
                            .font(.headline)
                            .padding(.bottom,4)
                        Text("Your Tap In results are negative \(tapInCompletetion)% of days")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                    }
                    Spacer()
                }
                    .padding()
                    .background {
                        Rectangle()
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 8)
                
            }
            .cornerRadius(25.0)
        }
    
    
    var DashCardColor: LinearGradient {
        switch tapInCompletetion  {
        case 85...100:
           return LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
        case 66...84:
            return LinearGradient(gradient: Gradient(colors: [Color("CautionColor1"), Color("CautionColor2")]), startPoint: .top, endPoint: .bottom)
        case 0...65:
            return LinearGradient(gradient: Gradient(colors: [Color("WarningColor1"), Color("WarningColor2")]), startPoint: .top, endPoint: .bottom)
        default:
            return LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
        }
    }
    
    
}

struct TapInCompletionView_Previews: PreviewProvider {
    static var previews: some View {
     TapInCompletionView()
        
    }
}
