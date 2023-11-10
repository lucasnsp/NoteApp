//
//  NotesView.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 09/11/23.
//

import SwiftUI

struct NotesView: View {
    
    @StateObject var viewModel = NoteViewModel()
    
    var body: some View {
        List($viewModel.notes, editActions: .all) { $note in
            Text(note.title)
            Text(note.content)
        }
    }
}

#Preview {
    NavigationStack {
        NotesView()
    }
}
