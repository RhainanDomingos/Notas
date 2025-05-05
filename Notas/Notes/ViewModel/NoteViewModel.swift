//
//  NoteViewModel.swift
//  Notas
//
//  Created by Rhainan Domingos on 04/05/25.
//

import Foundation

@Observable
class NoteViewModel {
    
    var notes: [Note] = [] {
        didSet {
            saveNotes()
        }
    }
    
    init() {
        guard let data = UserDefaults.standard.data(forKey: "notes") else { return }
        if let getNotes = try? JSONDecoder().decode([Note].self, from: data) {
            self.notes = getNotes
        }
    }
    
    func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.setValue(encoded, forKey: "notes")
        }
    }
}
