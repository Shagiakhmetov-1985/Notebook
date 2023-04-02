//
//  EmptyNote.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 02.04.2023.
//

import SwiftUI

struct EmptyNote: View {
    @State var theme = "Theme"
    @State var description = "Description"
    
    @Binding var themeText: String
    @Binding var descriptionText: String
    
    var body: some View {
        VStack {
            CustomLabel(text: $theme)
            CustomTextField(text: $themeText)
            CustomLabel(text: $description)
            CustomViewText(text: $descriptionText)
            
            Spacer()
        }
    }
}

struct EmptyNote_Previews: PreviewProvider {
    static var previews: some View {
        EmptyNote(themeText: .constant(""),
                  descriptionText: .constant(""))
    }
}
