//
//  NoteViewModel.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 10/11/23.
//

import Foundation

class NoteViewModel: ObservableObject {
    
    @Published var notes: [Note] = [] {
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
