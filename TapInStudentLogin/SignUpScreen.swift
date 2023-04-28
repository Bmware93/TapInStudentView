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
                
                Text("Sign Up")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.semibold)
                Group {
                    //Need to add tap gesture to dismiss keyboard
                    TextField("First Name", text: $firstName)

                    TextField("Last Name", text: $lastName)
             
                    TextField("Preferred Name", text: $preferredName)
     
                    TextField("Email", text: $email)
                    
                    TextField("School Code", text: $schoolCode)
                }
                .textFieldStyle(OutlinedTextFieldStyle())
                .padding(.horizontal, 20)
                

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
                        .foregroundColor(.secondary)
                    
                    NavigationLink("Sign In", destination: StudentLockScreen())
                        .foregroundColor(Color("ButtonColor2"))
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




