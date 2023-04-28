//
//  SignInScreen.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/23/23.
//

import SwiftUI
import Charts



struct DashBoard: View {
    
    @State private var tapInSheetShowing = false
    @State private var settingsSheetShowing  = false
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color("TapInPrimary")
                    .ignoresSafeArea(.all)
                
                VStack{
                    
                    HStack(alignment:.center ,spacing: 20) {
                        
                        Text("Mike's Dashboard")
                            .font(.system(size: 35, design: .rounded).weight(.medium))
                            .padding(.leading, 20)
                            .padding(.top, 30)
                        
                        Button {
                            settingsSheetShowing.toggle()
                            
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.secondary)
                                .padding(.top, 25)
                        }
                    }
                    
                    .sheet(isPresented: $settingsSheetShowing) {
                        SettingsSheetView()
                            .presentationDetents([.large])
                            .presentationDragIndicator(.visible)
                    }
                    
                    
                    Button {
                        print("Student Taped In")
                        
                    } label:   {
                        Image("SplashPageLogo")
                            .resizable()
                            .scaledToFit()
                            .padding(20)
                            .frame(width: 300, height: 290)
                    }
                    
                    Text("Complete your daily Tap In to view your survey results")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.horizontal, 10)
                    
                    // .padding(.bottom, 10)
                    
                    Spacer()
                    
                    Text("Community Poll")
                        .font(.title2)
                        .padding(.top, 30)
                        
                    
                    PollChartView()
                    
                    Spacer()
                    
                    Text("90% of your community prefers swimming")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    
                    
                    Button {
                        tapInSheetShowing.toggle()
                    } label: {
                        Text("Request a chat")
                            .frame(minWidth: 0, maxWidth: 300)
                            .padding()
                            .padding(.horizontal, -15)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .trailing, endPoint: .leading))
                            .cornerRadius(40)
                            .font(.title3)
                    }
                    .padding(.top, 30)
                    
                    NavigationLink("Sign Out", destination: {})
                        .bold()
                        .foregroundColor(.brandGradientLight)
                        .padding(.top)
                }
                
            }
            .sheet(isPresented: $tapInSheetShowing) {
                RequestAchat()
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
                
            }
        }
    }
    

}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashBoard()
    }
}




            
        





