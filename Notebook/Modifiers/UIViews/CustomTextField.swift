//
//  CustomTextField.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    
    let width: CGFloat = 350
    
    var body: some View {
        TextField("Type your topic", text: $text)
            .textFieldStyle(.roundedBorder)
            .frame(width: width)
            .overlay(RoundedRectangle(cornerRadius: 6)
                .stroke(lineWidth: 2)
            )
            .cornerRadius(6)
            .padding(3)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""))
    }
}
