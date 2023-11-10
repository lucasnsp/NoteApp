//
//  NoteViewModel.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 10/11/23.
//

import Foundation

class NoteViewModel: ObservableObject {
    
   @Published var notes: [Note] = [Note(title: "Titulo", content: "Descrição do conteudo")]
    
    
}
