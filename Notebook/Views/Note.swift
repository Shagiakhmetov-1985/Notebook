//
//  AddNewNote.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct Note: View {
    @State var theme: String
    @State var description: String
    
    var body: some View {
        EmptyNote(themeText: $theme, descriptionText: $description)
    }
}

struct AddNewNote_Previews: PreviewProvider {
    static var previews: some View {
        Note(theme: "", description: "")
    }
}
