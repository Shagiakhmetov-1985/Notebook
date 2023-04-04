//
//  CustomCell.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 31.03.2023.
//

import SwiftUI

struct CustomCell: View {
    @State var theme: String
    @State var date: String
    
    var body: some View {
        VStack {
            HStack {
                CustomLabel(alignment: .leading, text: $theme)
                Spacer()
            }
            HStack {
                CustomLabel(alignment: .leading, text: $date)
                    .opacity(0.4)
                Spacer()
            }
        }
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(theme: "Theme", date: "31.03.2023")
    }
}
