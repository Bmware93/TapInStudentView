//
//  SignInScreen.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/23/23.
//

import SwiftUI
import Charts

struct DashBoard: View {
    
    //MARK: Community poll data
    var data: [CommunityPoll] = [
        .init(activity: "Swimming", studentCount: 30, color: "Blue"),
        .init(activity: "Running", studentCount: 10, color: "Gray")
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
                            .padding(.leading)
                            .padding(.top, 30)
                        
                        
                        Button {
                            print("Button was Tapped")
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.bottom, 20)
                    
                    
                    Button {
                        print("Student Taped In")
                        
                    } label:   {
                        Image("SplashPageLogo")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                            .frame(width: 300, height: 300)
                    }
                    
                    Text("Complete your daily Tap In to view your survey results")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 10)
                    
                    // .padding(.bottom, 10)
                    
                    Spacer()
                    
                    Text("Community Poll")
                        .font(.title2)
                        .padding(.top, 30)
                    
                    Chart(data) { CommunityPoll in
                        BarMark(x: .value("Number of Students", CommunityPoll.studentCount),
                                y: .value("Activity", CommunityPoll.activity))
                        .foregroundStyle(by: .value("Activity Color", CommunityPoll.color))
                        .cornerRadius(20)
                        
                        
                    }
                    .chartForegroundStyleScale(["Blue": .blue, "Gray": .gray])
                    .chartXAxis(.hidden)
                    .frame(width: 290, height: 130)
                    .chartPlotStyle { plotcontent in
                        plotcontent
                            .background(.white.opacity(0.3))
                            .border(.white, width: 3)
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Button was pressed")
                        
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
                    .padding()
                    
                    NavigationLink("Sign Out", destination: {})
                        .bold()
                        .foregroundColor(Color("Gradiant1"))
                    
                    
                    
                    
                }
                
                //Spacer()
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
}
