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
    }
}

#Preview {
    AppView(appState: AppState(showTabBar: true))
}

#Preview {
    AppView(appState: AppState(showTabBar: false))
}
