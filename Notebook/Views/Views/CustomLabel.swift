//
//  CustomLabel.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct CustomLabel: View {
    @Binding var text: String
    
    var body: some View {
        Text(text)
    }
}

struct CustomLabel_Previews: PreviewProvider {
    static var previews: some View {
        CustomLabel(text: .constant("Some text"))
    }
}
