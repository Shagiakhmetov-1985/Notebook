//
//  NoteViewModel.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 02.04.2023.
//

import Foundation

class NoteViewModel: ObservableObject {
    @Published var notes: [Notebook] = [] {
        didSet {
            saveNotes()
        }
    }
    
    let notesKey = "notes"
    
    init() {
        getNotes()
    }
    
    func getNotes() {
        guard
            let data = UserDefaults.standard.data(forKey: notesKey),
            let savedNotes = try? JSONDecoder().decode([Notebook].self, from: data)
        else { return }
        
        notes = savedNotes
    }
    
    func deleteNote(indexSet: IndexSet) {
        notes.remove(atOffsets: indexSet)
    }
    
    func addNote() {
        let newNote = Notebook(theme: "", date: "", text: "")
        notes.append(newNote)
    }
    
    func updateNote(note: Notebook, theme: String, date: String, text: String) {
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index] = note.updateNote(theme: theme, date: date, text: text)
        }
    }
    
    func updateAddNote(theme: String, date: String, text: String) {
        let index = notes.count - 1
        notes[index] = notes[index].updateNote(theme: theme, date: date, text: text)
    }
    
    func saveNotes() {
        guard let encodedData = try? JSONEncoder().encode(notes) else { return }
        UserDefaults.standard.set(encodedData, forKey: notesKey)
    }
}
