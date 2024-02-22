//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Yeabsira Sefr on 2/17/24.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill out all fields "
            return
        }
        print("Called")
    }
    
    func validate(){
        
    }
}
