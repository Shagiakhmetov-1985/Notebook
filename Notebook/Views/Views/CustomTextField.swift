//
//  CustomTextField.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI
import Combine

struct CustomTextField: View {
    @EnvironmentObject var noteViewModel: NoteViewModel
    
    @Binding var text: String
    
    let width: CGFloat = 350
    
    var body: some View {
        HStack {
            TextField("Type your topic", text: $text)
                .textFieldStyle(.roundedBorder)
                .frame(width: width)
                .overlay(RoundedRectangle(cornerRadius: 6)
                    .stroke(lineWidth: 2)
                )
                .cornerRadius(6)
                .onReceive(Just(text)) { _ in limitText(18) }
        }
    }
}

extension CustomTextField {
    private func limitText(_ limit: Int) {
        if text.count > limit {
            text = String(text.prefix(limit))
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""))
            .environmentObject(NoteViewModel())
    }
}
