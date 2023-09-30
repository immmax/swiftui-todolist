//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Maxim Datskiy on 9/30/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView() 
        }
    }
}
