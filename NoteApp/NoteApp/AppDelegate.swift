//
//  AppDelegate.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 09/11/23.
//

import Foundation
import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
