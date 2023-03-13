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
    
    
    //MARK: Survey poll data
    var data: [CommunityPoll] = [
        .init(activity: "Swimming", studentCount: 4, color: "Swimming", graphGradient: LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .leading, endPoint: .trailing)),
        .init(activity: "Running", studentCount: 1, color: "Running", graphGradient: LinearGradient(colors: [.gray, .secondary], startPoint: .leading, endPoint: .trailing))
    ]
    
    
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
                        Text("Students Settings View")
                        
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
                    
                    //MARK: Survey Section
                    Text("Community Poll")
                        .font(.title2)
                        .padding(.top, 30)
                    
                    
                    Chart(data) { CommunityPoll in
                        BarMark(x: .value("Number of Students", CommunityPoll.studentCount),
                                y: .value("Activity", CommunityPoll.activity))
                        //.foregroundStyle(by: .value("Activity Color", CommunityPoll.color))
                        .foregroundStyle(CommunityPoll.graphGradient)
                        .cornerRadius(20)
                        
                    }
                    .chartForegroundStyleScale(["Swimming":.blue, "Running": .gray])
                    .chartXAxis(.hidden)
                    .frame(width: 333, height: 130)
                    .chartPlotStyle { plotcontent in
                        plotcontent
                            .background(.white.opacity(0.3))
                            .border(.white, width: 3)
                        
                    }
                    
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
                            .background(LinearGradient(gradient: Gradient(colors: [Color("Gradiant1"), Color("Gradiant2")]), startPoint: .trailing, endPoint: .leading))
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
    
    struct CommunityPoll: Identifiable {
        var id = UUID()
        var activity: String
        var studentCount: Int
        var color: String
        var graphGradient: LinearGradient
    }
    
    




extension Color {
    static let brandGradientLight = Color("Gradiant1")
    static let brandGradientlight2 = Color("Gradiant2")
}
