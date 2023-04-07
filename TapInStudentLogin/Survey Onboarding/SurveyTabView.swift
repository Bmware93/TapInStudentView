//
//  SurveyTabView.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 4/6/23.
//

import SwiftUI

struct SurveyTabView: View {
    var body: some View {
        TabView {
            TapInSurvey1()
            TapInSurvey2()
            TapInSurvey3()
            TapInSurvey4()
        }
        .ignoresSafeArea(.all)
        .tabViewStyle(.page)
       
        
    }
        
}

struct SurveyTabView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyTabView()
    }
}
