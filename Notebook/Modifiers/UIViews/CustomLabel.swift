//
//  CustomLabel.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct CustomLabel: View {
    @Binding var text: String
    
    let width: CGFloat = 350
    
    var body: some View {
        HStack {
            Text(text)
                .frame(width: width, alignment: .leading)
        }
        .padding(3)
    }
}

struct CustomLabel_Previews: PreviewProvider {
    static var previews: some View {
        CustomLabel(text: .constant("Some text"))
    }
}
