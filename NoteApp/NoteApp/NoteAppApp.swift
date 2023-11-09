//
//  NoteAppApp.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 09/11/23.
//

import SwiftUI
import FirebaseCore

@main
struct NoteAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
