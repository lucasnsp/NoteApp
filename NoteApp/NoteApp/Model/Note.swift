//
//  Note.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 10/11/23.
//

import Foundation

struct Note: Identifiable {
    var id: UUID = UUID()
    var title: String = ""
    var content: String = ""
}
