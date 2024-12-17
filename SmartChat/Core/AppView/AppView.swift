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

    @State var showTabBar: Bool = true

    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
    }
}

#Preview {
    AppView(showTabBar: true)
}

#Preview {
    AppView(showTabBar: false)
}
