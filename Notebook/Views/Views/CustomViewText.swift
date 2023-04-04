//
//  CustomViewText.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct CustomViewText: View {
    @Binding var text: String
    
    let width: CGFloat = 350
    
    var body: some View {
        TextEditor(text: $text)
            .frame(width: width)
            .overlay(RoundedRectangle(cornerRadius: 6)
                .stroke(lineWidth: 1)
            )
    }
}

struct CustomViewText_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewText(text: .constant(""))
    }
}
