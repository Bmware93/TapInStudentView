//
//  Dashboard2.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 4/29/23.
//

import SwiftUI

struct DashBoard2: View {
    
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
                    List {
                        Section{
                            
                            Button {
                                print("Student Taped In")
                                
                            } label:   {
                                Image("SplashPageLogo")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(20)
                                    .frame(width: 300, height: 290)
                            }
                            
                            Text("Complete your daily Tap In to view your survey results.")
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.secondary)
                                .padding(.horizontal, 10)
                        }
                        // .padding(.bottom, 10)
                        
                        //Spacer()
                        
                        Section("Community Poll"){
                            //                            Text("Community Poll")
                            //                                .font(.title2)
                            //                                .padding(.top, 30)
                            //
                            
                            Text("Do you like swimming?")
                                .font(.system(size: 20))
                            
                            HStack(alignment: .center, spacing: 50){
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "hand.thumbsup.fill")
                                        .foregroundColor(.brandGradientLight)
                                        .padding(.leading, 30)
                                    
                                }
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "hand.thumbsdown.fill")
                                        .foregroundColor(.black)
                                        .padding(.leading, 30)
                                }
                            }
                            .buttonStyle(BorderlessButtonStyle())
                            .font(.system(size: 50))
                        }
                        .headerProminence(.increased)
                    }
                    
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

struct Dashboard2_Previews: PreviewProvider {
    static var previews: some View {
        DashBoard2()
    }
}
