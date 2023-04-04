//
//  Note.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 02.04.2023.
//

import SwiftUI

struct Note: View {
    enum Field {
        case theme
        case text
    }
    
    @State var theme = "Theme"
    @State var description = "Description"
    
    @Binding var themeText: String
    @Binding var descriptionText: String
    
    @FocusState var focusedField: Field?
    
    var body: some View {
        VStack {
            CustomLabel(alignment: .leading, width: 350, text: $theme)
            CustomTextField(text: $themeText)
                .focused($focusedField, equals: .theme)
                .submitLabel(.next)
            CustomLabel(alignment: .leading, width: 350, text: $description)
            CustomViewText(text: $descriptionText)
                .focused($focusedField, equals: .text)
                .submitLabel(.return)
        }
        .onSubmit {
            switch focusedField {
            case .theme:
                focusedField = .text
            default:
                break
            }
        }
    }
}

struct EmptyNote_Previews: PreviewProvider {
    static var previews: some View {
        Note(themeText: .constant(""),
                  descriptionText: .constant(""))
    }
}
