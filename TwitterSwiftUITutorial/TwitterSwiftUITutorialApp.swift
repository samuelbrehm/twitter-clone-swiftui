//
//  TwitterSwiftUITutorialApp.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 19/04/21.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUITutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
