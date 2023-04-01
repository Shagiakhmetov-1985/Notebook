//
//  AddNewNote.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct AddNewNote: View {
    @State var theme: String
    @State var description: String
    
    var body: some View {
        NavigationView {
            EmptyNote(themeText: $theme, descriptionText: $description)
        }
        .navigationTitle("New note")
    }
}

struct AddNewNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(theme: "", description: "")
    }
}
