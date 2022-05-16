//
//  SwiftUITestProjectApp.swift
//  SwiftUITestProject
//
//  Created by user on 29.01.2022.
//

import SwiftUI
import Firebase


@main
struct SwiftUITestProjectApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
//            AuthViewModel.shared fires off the static instance of AuthViewModel
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
