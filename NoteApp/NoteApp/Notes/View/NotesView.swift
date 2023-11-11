//
//  NotesView.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 09/11/23.
//

import SwiftUI

struct NotesView: View {
    
    @StateObject var viewModel = NoteViewModel()
    @State var isGoAdditionNote: Bool = false
    
    var body: some View {
        List($viewModel.notes, editActions: .all) { $note in
            NavigationLink {
                Color.red
            } label: {
                HStack {
                    Image(systemName: "pencil")
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 8)
                    VStack(alignment: .leading) {
                        Text(note.title)
                            .font(.headline)
                        Text(note.content)
                            .font(.subheadline)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("Notas").navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Adicionar") {
                    isGoAdditionNote.toggle()
                }
            }
        }
        .sheet(isPresented: $isGoAdditionNote, content: {
            AddNotesView(viewModel: viewModel)
        })
    }
}

#Preview {
    NavigationStack {
        NotesView()
    }
}
