//
//  LoginView.swift
//  ToDoList
//
//  Created by Maxim Datskiy on 9/30/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "To Do List",
                       subtitle: "Get things done",
                       angle: 15,
                       background: Color.pink)
            
            Form {
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Log In", background: .blue) {
                    viewModel.login()
                }
                .padding()
            }
            .offset(y: -50)
            
            //Create Account
            VStack {
                Text("New around here?")
                
                NavigationLink("Create an account", destination: RegisterView())
            }
//            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
