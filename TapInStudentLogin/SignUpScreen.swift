//
//  ContentView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/19/23.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var preferredName = ""
    @State private var email = ""
    @State private var schoolCode = ""
    
    var body: some View {
        NavigationStack {
            
        ZStack{
           
                Color("TapInPrimary")
                    .ignoresSafeArea(.all)
                
            VStack {
                
                Spacer()
                    .frame(height: 80)
                
                Group {
                    //Need to add tap gesture to dismiss keyboard
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
                    
                    TextField("School Code", text: $schoolCode)
                        .textFieldStyle(OutlinedTextFieldStyle())
                        .padding(.horizontal, 20)
                }
                //Tap to continue button
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
                
                
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    
                    Text("Already have an account?")
                        .font(.callout)
                        .foregroundColor(.gray)
                    
                    NavigationLink("Sign In", destination: StudentLockScreen())
                        .foregroundColor(Color("Gradiant1"))
                }
                Spacer()
                    .frame(height: 80)
                
            }
               
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}

extension Color {
    static let textFieldBackground = Color("TextFieldColor")
    static let backgroundColor = Color("TapInPrimary")
  //  static let tapInGradient = LinearGradient(gradient: Gradient(colors: [Color("Gradiant1"), Color("Gradiant2")]), startPoint: .trailing, endPoint: .leading);)
}


