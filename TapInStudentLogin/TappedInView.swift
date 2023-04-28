////
////  TappedInView.swift
////  TapInStudentLogin
////
////  Created by Benia Morgan-Ware on 4/18/23.

import SwiftUI

    struct TappedInView: View {
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
                
      
                HStack {
                    
                    Text("Showing results for this week. Tap to Change")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.horizontal, 10)
                        .padding(.top)
                    
                    Menu {
                        Button("Week", action: {})
                        Button("Month", action: {})
                        Button("Semester", action: {})
                        Button("Year", action: {})
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle.fill")
                            .foregroundColor(.black)
                    }
                }

                List {
                    Section {
                        StudentWellBeingView()
                
                    }
                    
                    Section{
                        TapInCompletionView()
                    }
                    
                  
                    Section {
                        HStack(spacing: 15) {
                            VStack{
                                Text("Mon")
                                    .padding(.bottom, 3)
                                Image(systemName: "checkmark.circle")
                            }.padding(.leading)
                            VStack {
                                Text("Tue")
                                    .padding(.bottom, 25)
                            }.padding([.trailing,.leading])
                            VStack {
                                Text("Wed")
                                    .padding(.bottom, 25)
                            }.padding([.trailing])
                            VStack {
                                Text("Thu")
                                    .padding(.bottom, 3)
                                Image(systemName: "checkmark.circle")
                            }.padding(.trailing)
                            VStack {
                                Text("Fri")
                                    .padding(.bottom, 3)
                                Image(systemName: "checkmark.circle")
                            }.padding(.trailing)
                        }
                    } header: {
                        Text("Week of April. 24 2023")
                        
                    }
                    
                  //  Spacer()
                    
                    Section("Community Poll") {
//                        Text("Community Poll")
//                            .font(.title2)
//                            .padding(.top, 30)
                        
                        PollChartView()
                        
                        Text("90% of your community prefers swimming")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .headerProminence(.increased)
                    
                    
                    //Spacer()
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
struct TappedInView_Previews: PreviewProvider {
    static var previews: some View {
        TappedInView()
    }
}
