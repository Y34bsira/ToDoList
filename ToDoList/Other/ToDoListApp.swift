//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Yeabsira Sefr on 2/17/24.
//

import FirebaseCore
import SwiftUI

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
