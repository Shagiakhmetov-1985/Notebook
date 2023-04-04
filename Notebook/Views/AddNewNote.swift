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
        ZStack {
            VStack {
                Note(themeText: $theme.onChange(textChanges),
                     descriptionText: $description)
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
        var note = noteViewModel.fetchAddNote()
        
    }
}

struct AddNewNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(theme: "", description: "")
            .environmentObject(NoteViewModel())
    }
}
