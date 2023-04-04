//
//  NoteViewModel.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 02.04.2023.
//

import Foundation

class NoteViewModel: ObservableObject {
    @Published var notes: [Notebook] = []
    
    init() {
        getNotes()
    }
    
    func getNotes() {
        let newNotes = [
            Notebook(theme: "My first note", date: "31.03.2023", text: "afasdf"),
            Notebook(theme: "My second note", date: "1.04.2023", text: "fijgijjg"),
            Notebook(theme: "Third note", date: "2.04.2023", text: "ahahaha")
        ]
        notes.append(contentsOf: newNotes)
    }
    
    func deleteNote(indexSet: IndexSet) {
        notes.remove(atOffsets: indexSet)
    }
    
    func addNote() {
        let newNote = Notebook(theme: "", date: "", text: "")
        notes.append(newNote)
    }
    
    func updateNote(note: Notebook) {
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index] = note.updateNote()
        }
    }
    
    func fetchAddNote() -> Notebook {
        notes.lastNote
    }
}
