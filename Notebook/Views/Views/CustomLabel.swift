//
//  CustomLabel.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct CustomLabel: View {
    @State var alignment: Alignment
    @State var width: CGFloat? = nil
    
    @Binding var text: String
    
    var body: some View {
        Text(text)
            .frame(width: width, alignment: alignment)
    }
}

struct CustomLabel_Previews: PreviewProvider {
    static var previews: some View {
        CustomLabel(alignment: .leading,
                    width: 350,
                    text: .constant("Some text"))
    }
}
