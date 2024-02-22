//
//  RegisterVIew.swift
//  ToDoList
//
//  Created by Yeabsira Sefr on 2/17/24.
//

import SwiftUI

struct RegisterVIew: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start Organizing To-dos",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Passowrd", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account",
                    background: .green) {
                    //Attempt Log In
                }
                    .padding()
            }
            .offset(y: -50)
            Spacer()

        }
    }
}
#Preview {
    RegisterVIew()
}
