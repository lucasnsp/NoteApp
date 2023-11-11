//
//  Note.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 10/11/23.
//

import Foundation

struct Note: Identifiable, Equatable {
    var id: UUID = UUID()
    var title: String = ""
    var content: String = ""
    
    static func == (lhs: Note, rhs: Note) -> Bool {
        return lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.content == rhs.content
    }
}
