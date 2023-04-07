//
//  RequestAchat.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 3/2/23.
//

import SwiftUI

struct RequestAchat: View {
    var teachers: [String] = [
        "Mr. Westbrooks",
        "Ms. Williams",
        "Mrs. James"
    ]

    @State  var selectedTeacher: String = ""
    
    var body: some View {
                   VStack {
                        
                        Spacer()
                        
                        Text("I want to talk to someone")
                            .font(.system(size: 36, design: .rounded) .weight (.semibold))
                            .padding(.bottom)
                        //.frame(width: 420)
                        
                        Text("This will notify your teacher that you want to chat about how you're doing.")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                            .frame(width: 230)
                            .padding(.bottom, 20)
                        

                            Text("Seleceted Teacher: \(selectedTeacher)")
                            Picker("Pick a language", selection: $selectedTeacher) { // 3
                                ForEach(teachers, id: \.self) { item in // 4
                                    Text(item) // 5
                                }
                            }
                       
                        Spacer()
                        
                        Button {
                            print("Button was tapped")
                            
                        } label: {
                            Text("Confirm")
                                .frame(minWidth: 0, maxWidth: 300)
                                .padding()
                                .padding(.horizontal, -15)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("Gradiant1"), Color("Gradiant2")]), startPoint: .trailing, endPoint: .leading))
                                .cornerRadius(40)
                                .font(.title3)
                                .padding(.bottom, 30)
                        }
                        
                    }
                }
            }

struct RequestAchat_Previews: PreviewProvider {
    static var previews: some View {
        RequestAchat()
    }
}
