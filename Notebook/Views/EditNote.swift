//
//  EditNote.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 03.04.2023.
//

import SwiftUI
import Combine

struct EditNote: View {
    @EnvironmentObject var noteViewModel: NoteViewModel
    
    @State var theme: String
    @State var text: String
    
    var body: some View {
        Note(themeText: $theme, descriptionText: $text)
    }
}

struct EditNote_Previews: PreviewProvider {
    static var previews: some View {
        EditNote(theme: "", text: "")
            .environmentObject(NoteViewModel())
    }
}
