//
//  RegisterView.swift
//  NoteApp
//
//  Created by Lucas Neves dos santos pompeu on 09/11/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
            VStack(spacing: 25) {
                Text("Register")
                    .font(.system(size: 55, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 10)
                    .padding(.bottom, 50)
                
                Group {
                    TextField("", text: $email, prompt: Text("E-mail").foregroundStyle(.white))
                        .keyboardType(.emailAddress)
                    SecureField("", text: $password, prompt: Text("Password").foregroundStyle(.white))
                    SecureField("", text: $confirmPassword, prompt: Text("Confirm Password").foregroundStyle(.white))
                }
                .frame(height: 40)
                .padding(7)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 8).stroke(Color.pinkColor, lineWidth: 2)
                })
                .padding(7)
                .foregroundStyle(.white)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                
                Spacer()
                
                Button {
                    print("tappedButton")
                } label: {
                    Text("Register")
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold))
                        .background(isDisabledRegisterButton ? Color.pinkColor.opacity(0.6) : Color.pinkColor)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .disabled(isDisabledRegisterButton)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 50)
        }
    }
    
    var isDisabledRegisterButton: Bool {
        return email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || confirmPassword.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

#Preview {
    RegisterView()
}
