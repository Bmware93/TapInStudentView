//
//  SettingsView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 4/7/23.
//

import SwiftUI

struct SettingsSheetView: View {
    
    @State private var tapInReminder = false
    
    @State private var counselor = ""
    @State private var Homeroom = ""
    @State private var secondPeriod = ""
    @State private var thirdPeriod = ""
    @State private var fourthPeriod = ""
    @State private var fifthPeriod = ""
    @State private var sixthPeriod = ""
    @State private var seventhPeriod = ""
    
    var body: some View {
        VStack {
            
            Text("Settings")
                .font(.system(size: 40, design: .rounded).weight(.medium))
                .padding(.bottom, 30)
            
            Toggle("Remind me to Tap In", isOn: $tapInReminder)
                .bold()
                .padding(.horizontal, 30)
                .padding(.bottom)
            
            VStack(spacing: 3) {
                
                Group {
                    
                    Text("Counselor")
                        .font(.callout)
                        .padding(.trailing, 255)
                    
                    TextField("Counselor: Ms. Baker", text: $counselor)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 15)
                    
                    Text("Homeroom")
                        .font(.callout)
                        .padding(.trailing, 255)
                    
                    TextField("Mrs. Adams", text: $Homeroom)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 15)
                    
                    Text("2nd Period")
                        .font(.callout)
                        .padding(.trailing, 255)
                    
                    
                    TextField("Select 2nd Period Teacher", text: $secondPeriod)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 15)
                }
                
                Group {
                    
                    Text("3rd Period")
                        .font(.callout)
                        .padding(.trailing, 255)
                    
                    TextField("Select 3rd Period Teacher", text: $secondPeriod)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 15)
                    
                    Text("4th Period")
                        .font(.callout)
                        .padding(.trailing, 255)
                    
                    TextField("Select 4th Period Teacher", text: $fourthPeriod)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 15)
                    
                    Text("5th Period")
                        .font(.callout)
                        .padding(.trailing, 255)
                    
                    TextField("Select 5th Period Teacher", text: $fifthPeriod)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 15)
                    
                    //                    Text("6th Period")
                    //                        .font(.callout)
                    //                        .padding(.trailing, 255)
                    //
                    //                    TextField("Select 6th Period Teacher", text: $sixthPeriod)
                    //                        .textFieldStyle(OutlinedTextFieldStyle())
                    //                        .padding(.horizontal, 15)
                    //
                    //                    Text("7th Period")
                    //                        .font(.callout)
                    //                        .padding(.trailing, 255)
                    //
                    //                    TextField("Select 7th Period Teacher", text: $seventhPeriod)
                    //                        .textFieldStyle(OutlinedTextFieldStyle())
                    //                        .padding(.horizontal, 15)
                    
                    
                }
                //Spacer()
            }
        }
        }
    }
struct SettingsSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheetView()
    }
}
