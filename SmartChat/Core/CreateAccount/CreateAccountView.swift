//
//  CreateAccountView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 05/01/25.
//

import SwiftUI

struct CreateAccountView: View {

    @Environment(\.dismiss) private var dismiss
    @Environment(\.authService) private var authService
    var title: String = "Create Account?"
    var subTitle: String = "Don't lose your data! Connect to an SSO provider to save your account."
    var onDidSignIn: ((_ isNewUser: Bool) -> Void)?

    var body: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .font(.body)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            SignInWithAppleButtonView(
                type: .signIn,
                style: .black,
                cornerRadius: 10
            )
            .frame(height: 55)
            .anyButton(.press) {
                onSignInApplePressed()
            }

            Spacer()
        }
        .padding(16)
        .padding(.top, 40)
    }

    private func onSignInApplePressed() {
        Task {
            do {
                let result = try await authService.signInApple()

                print("Did sign in with apple!")
                onDidSignIn?(result.isNewUser)
                dismiss()
            } catch {
                print("Deu ruim ao fazer login com a apple")
            }
        }
    }
}

#Preview {
    CreateAccountView()
}
