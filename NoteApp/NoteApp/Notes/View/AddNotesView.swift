//
//  AddNotesView.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 11/11/23.
//

import SwiftUI

struct AddNotesView: View {
    
    @ObservedObject var viewModel: NoteViewModel
    @State var note = Note()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                TextField("Informe o Titulo", text: $note.title)
            } header: {
                Text("Titulo")
            }
            
            Section {
                TextEditor(text: $note.content)
            } header: {
                Text("Conteúdo")
            }
            
            Section {
                Button("Salvar") {
                    viewModel.notes.append(note)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    var viewModel = NoteViewModel()
    return AddNotesView(viewModel: viewModel)
}
