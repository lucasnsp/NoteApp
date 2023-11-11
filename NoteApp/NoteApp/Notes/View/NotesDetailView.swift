//
//  NotesDetailView.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 11/11/23.
//

import SwiftUI

struct NotesDetailView: View {
    
    @Binding var note: Note
    @State var noteState: Note
    @Environment(\.dismiss) var dismiss
    
    init(note: Binding<Note>) {
        _note = note
        _noteState = State(initialValue: note.wrappedValue)
    }
    
    var body: some View {
        VStack {
            TextField("Título", text: $noteState.title)
                .font(.title)
            TextEditor(text: $noteState.content)
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Detalhes")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Salvar") {
                    note = noteState
                    dismiss()
                }
                .disabled(isEqualNotes)
            }
        }
    }
    var isEqualNotes: Bool {
        note == noteState
    }
}

#Preview {
    @State var note = Note(title: "Titulo", content: "Conteudo")
    return NavigationStack {
        NotesDetailView(note: $note)
    }
}
