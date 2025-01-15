//
//  AppView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 17/12/24.
//

import SwiftUI

// tabbar - signed in
// onboarding - signed out

struct AppView: View {

    @State var appState: AppState = AppState()
    @Environment(\.authService) private var authService

    var body: some View {
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
        .environment(appState)
        .task {
            await checkUserStatus()
        }
    }

    private func checkUserStatus() async {
        if let user = authService.getAuthenticateUser() {
            // Usuário autenticado
            print("User already authenticated: \(user.uid)")
        } else {
            // Usuário não autenticado

            do {
                let result = try await authService.signInAnonymously()
                print("Sign in anonymous Success: \(result.user.uid)")
            } catch {

            }
        }
    }
}

#Preview {
    AppView(appState: AppState(showTabBar: true))
}

#Preview {
    AppView(appState: AppState(showTabBar: false))
}
