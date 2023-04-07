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
        .init(activity: "Swimming", studentCount: 100, color: "Swimming", graphGradient: LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .leading, endPoint: .trailing)),
        .init(activity: "Running", studentCount: 40, color: "Running", graphGradient: LinearGradient(colors: [.gray, .secondary], startPoint: .leading, endPoint: .trailing))
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
                    
                    //MARK: Survey Section
                    Text("Community Poll")
                        .font(.title2)
                        .padding(.top, 30)
                    
                    communityPollChart(data: data)
                        .chartPlotStyle { plotcontent in
                            plotcontent
                                .background(.white.opacity(0.3))
                            //.border(.white, width: 3)
                            
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
    
    @ViewBuilder
    func communityPollChart(data: [CommunityPoll]) -> some View {
        Chart(data) { CommunityPoll in
            BarMark(x: .value("Number of Students", CommunityPoll.studentCount),
                    y: .value("Activity", CommunityPoll.activity))
            .foregroundStyle(CommunityPoll.graphGradient)
            .cornerRadius(20)
        }
        .chartForegroundStyleScale(["Swimming":.blue, "Running": .gray])
        .chartXAxis(.hidden)
        .frame(width: 333, height: 130)
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




