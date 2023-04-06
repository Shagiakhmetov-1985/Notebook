//
//  EditNote.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 03.04.2023.
//

import SwiftUI

struct EditNote: View {
    @EnvironmentObject var noteViewModel: NoteViewModel
    
    @State var note: Notebook
    @State var theme: String
    @State var text: String
    
    var body: some View {
        ZStack {
            VStack {
                Note(themeText: $theme.onChange(textChanges),
                     descriptionText: $text.onChange(textChanges))
            }
        }
        .navigationTitle($theme.onChange(textChanges))
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .ignoresSafeArea(.keyboard)
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

extension EditNote {
    private func textChanges(to value: String) {
        let currentDate = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd.MM.YYYY в HH:mm"
        let date = formatter.string(from: currentDate)
        
        noteViewModel.updateNote(note: note, theme: theme,
                                 date: date, text: text)
    }
}

struct EditNote_Previews: PreviewProvider {
    static var previews: some View {
        EditNote(note: Notebook(theme: "", date: "", text: ""),
                 theme: "", text: "")
            .environmentObject(NoteViewModel())
    }
}
