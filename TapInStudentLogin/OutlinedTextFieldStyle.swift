//
//  OutlinedTextFieldStyle.swift
//  TapInStudentLogin
//
//  Created by Benia Morgan-Ware on 2/19/23.
//

import Foundation
import SwiftUI

struct OutlinedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical)
            .padding(.horizontal, 20)
                   .background(
                    Color("TextFieldColor"))
                   .clipShape(Capsule(style: .continuous))
                   .padding(5)
                   
    }
    
}


struct OutlinedTextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
        TextField("Type something...", text: .constant(""))
            .textFieldStyle(OutlinedTextFieldStyle())
            //.previewLayout(.sizeThatFits)
           // .padding()
    }
}
