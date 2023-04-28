//
//  PollChartView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 4/18/23.
//

import SwiftUI
import Charts

struct CommunityPoll: Identifiable {
    var id = UUID()
    var activity: String
    var studentCount: Int
    var color: String
    var graphGradient: LinearGradient
}

struct PollChartView: View {
    var data: [CommunityPoll] = [
        .init(activity: "Swimming", studentCount: 100, color: "Swimming", graphGradient: LinearGradient(colors: [.brandGradientLight, .brandGradientlight2], startPoint: .leading, endPoint: .trailing)),
        .init(activity: "Running", studentCount: 40, color: "Running", graphGradient: LinearGradient(colors: [.gray, .secondary], startPoint: .leading, endPoint: .trailing))
    ]
    var body: some View {
        VStack {
            //GroupBox("Community Poll") {
                Chart(data) { CommunityPoll in
                    BarMark(x: .value("Number of Students", CommunityPoll.studentCount),
                            y: .value("Activity", CommunityPoll.activity))
                    .foregroundStyle(CommunityPoll.graphGradient)
                    .cornerRadius(20)
                }
                .chartYAxis {
                    AxisMarks(position: .leading) { _ in
                        AxisValueLabel()
                    }
                }
                .chartForegroundStyleScale(["Swimming":.blue, "Running": .gray])
                .chartXAxis(.hidden)
              
                .frame(width: 333, height: 130)
            }
        }
   // }
}

struct PollChartView_Previews: PreviewProvider {
    static var previews: some View {
        PollChartView()
    }
}
