//
//  ContentView.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 09/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundColor.ignoresSafeArea()
                VStack(spacing: 25) {
                    Text("Login")
                        .font(.system(size: 55, weight: .bold))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Group {
                        TextField("", text: $email, prompt: Text("E-mail").foregroundStyle(.white))
                            .keyboardType(.emailAddress)
                        SecureField("", text: $password, prompt: Text("Password").foregroundStyle(.white))
                    }
                    .frame(height: 40)
                    .padding(7)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 8).stroke(Color.pinkColor, lineWidth: 2)
                    })
                    .padding(7)
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    LoginView()
}
