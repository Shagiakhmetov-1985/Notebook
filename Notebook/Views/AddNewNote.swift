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
    @State var date: String
    @State var description: String
    
    var body: some View {
        ZStack {
            VStack {
                Note(themeText: $theme.onChange(textChanges),
                     descriptionText: $description.onChange(textChanges))
                    .onAppear {
                        noteViewModel.addNote()
                    }
            }
        }
        .navigationTitle("New note")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .ignoresSafeArea(.keyboard)
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

extension AddNewNote {
    private func textChanges(to value: String) {
        let currentDate = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd.MM.YYYY в HH:mm"
        date = formatter.string(from: currentDate)
        
        noteViewModel.updateAddNote(theme: theme, date: date, text: description)
    }
}

struct AddNewNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(theme: "", date: "", description: "")
            .environmentObject(NoteViewModel())
    }
}
