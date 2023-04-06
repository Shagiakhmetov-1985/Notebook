//
//  CustomCell.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 31.03.2023.
//

import SwiftUI

struct CustomCell: View {
    @Binding var theme: String
    @Binding var date: String
    
    var body: some View {
        VStack {
            HStack {
                CustomLabel(text: $theme)
                Spacer()
            }
            HStack {
                CustomLabel(text: $date)
                    .opacity(0.4)
                Spacer()
            }
        }
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(theme: .constant("Theme"), date: .constant("31.03.2023"))
    }
}
