//
//  LoginView.swift
//  ToDoList
//
//  Created by Yeabsira Sefr on 2/17/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get Things Done",
                           angle: 15,
                           background: .pink)
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text:
                        $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: 
                        $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                    
                        .padding()
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New Around Here?")
                    
                    //show Registration
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterVIew())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}
    
    #Preview {
        LoginView()
}

