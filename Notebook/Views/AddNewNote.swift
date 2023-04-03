//
//  AddNewNote.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import SwiftUI

struct AddNewNote: View {
    @EnvironmentObject var noteViewModel: NoteViewModel
    
    @State var theme: String
    @State var description: String
    
    var body: some View {
        Note(themeText: $theme, descriptionText: $description)
            .onAppear {
                noteViewModel.addNote()
            }
    }
}

struct AddNewNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(theme: "", description: "")
            .environmentObject(NoteViewModel())
    }
}
