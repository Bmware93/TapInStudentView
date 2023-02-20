//
//  ContentView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var preferredName = ""
    @State private var email = ""
    @State private var securityQuestionAnswer = ""
    @State private var schoolCode = ""
    
    var body: some View {
        NavigationStack {
            
        ZStack{
           
                Color("TapInPrimary")
                    .ignoresSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Group {
                        
                        Text("Sign Up")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.semibold)
                        
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                        
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                        
                        TextField("Preferred Name", text: $preferredName)
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                    }
                    
                    Group {
                        //Security Question Hyperlink
                        TextField("Security Question", text: .constant(""))
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                        
                        TextField("Answer", text: $securityQuestionAnswer)
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                        
                        TextField("School Code", text: $schoolCode)
                            .textFieldStyle(OutlinedTextFieldStyle())
                            .padding(.horizontal, 20)
                    }
                    
                    Button {
                        print("Button was Tapped")
                        
                    } label: {
                        Image("TapInLogo")
                            .resizable()
                            .frame(width: 120, height: 110)
                            .scaledToFit()
                    }
                    
                    .padding(.top)
                    
                       
                    Text("Tap to continue")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    HStack{
                        Text("Already have an account?")
                            .font(.callout)
                        
                        NavigationLink("Sign In", destination: {})
                        
                    }
                    Spacer()
                    
                }
                
                
               
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let textFieldBackground = Color("TextFieldColor")
    static let backgroundColor = Color("TapInPrimary")
}


