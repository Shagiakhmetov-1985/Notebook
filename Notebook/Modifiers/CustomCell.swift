//
//  CustomCell.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 31.03.2023.
//

import SwiftUI

struct CustomCell: View {
    let text: String
    let date: String
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                Spacer()
            }
            HStack {
                Text(date)
                    .opacity(0.4)
                Spacer()
            }
        }
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell(text: "Theme", date: "31.03.2023")
    }
}
