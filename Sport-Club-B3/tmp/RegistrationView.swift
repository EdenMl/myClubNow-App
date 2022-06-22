//
//  RegistrationView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("primaryColor")
                    .ignoresSafeArea()
                    .preferredColorScheme(.light)

                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Inscription")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .preferredColorScheme(.light)
                        
                    TextField("Email", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        .preferredColorScheme(.light)
                        .background(Color.black.opacity(0.05))
                    
                    SecureField("Mot de passe", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .preferredColorScheme(.light)
                        .background(Color.black.opacity(0.05))
                    
                    SecureField("Confirmer le mot de passe", text: $confirmPassword)
                        .padding()
                        .frame(width: 300, height: 50)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .preferredColorScheme(.light)
                        .background(Color.black.opacity(0.05))
                    
                    Button("S'inscrire") {
                        registerUser(username: username, password: password, confirmPassword: confirmPassword)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color("primaryColor"))
                    .cornerRadius(10)
                    
                    NavigationLink(
                        destination: Text("You are logged in @\(username)"),
                        isActive: $showingLoginScreen) {
                            EmptyView()
                        }
                }
                
            }
            .navigationBarHidden(true)
        }
    }
    
    func registerUser(username: String, password: String, confirmPassword: String) {
        if username.isEmpty || username == "" {
            wrongUsername = 2
            return
        }
        
        if password.isEmpty || password == "" {
            wrongPassword = 2
            return
        }
        
        if password != confirmPassword {
            wrongPassword = 2
            return
        }
        
        // TODO
        
        wrongUsername = 0
        wrongPassword = 0
        showingLoginScreen = true
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
