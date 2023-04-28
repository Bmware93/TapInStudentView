//
//  StudentWellBeingView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 4/18/23.
//

import SwiftUI

struct StudentWellBeingView: View {

    @State var wellbeingFactor = "Well being Factor"
    @State var rating = 60
    @State var tapInCompletetion = 0
    
    
    var body: some View {
            HStack(spacing: 0.0) {
                VStack {
                    HStack {
                        Spacer()
                   
                        
                    }
                    
                    Text("\(rating)%")
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
                            .padding(.bottom, 4)
                        Text("Your Tap In results are negative \(rating)% of days")
                            //.multilineTextAlignment(.center)
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
            .cornerRadius(30.0)
        }
    
    
    var DashCardColor: LinearGradient {
        switch rating  {
        case 85...100:
           return LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
        case 65...84:
            return LinearGradient(gradient: Gradient(colors: [Color("CautionColor1"), Color("CautionColor2")]), startPoint: .top, endPoint: .bottom)
        case 0...65:
            return LinearGradient(gradient: Gradient(colors: [Color("WarningColor1"), Color("WarningColor2")]), startPoint: .top, endPoint: .bottom)
        default:
            return LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
        }
    }
    
    
}

struct StudentWellbeingFactorCardView_Previews: PreviewProvider {
    static var previews: some View {
     StudentWellBeingView()
        
    }
}
