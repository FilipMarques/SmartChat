//
//  AppView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 17/12/24.
//

import SwiftUI

// tabbar - signed in
// onboarding - signed out

struct AppViewBuilder<TabbarView: View, OnboardingView: View>: View {

    var showTabBar: Bool = false
    @ViewBuilder var tabbarView: TabbarView
    @ViewBuilder var onboardingView: OnboardingView

    var body: some View {
        ZStack {
            if showTabBar {
                tabbarView
                    .transition(.move(edge: .trailing))
            } else {
                onboardingView
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabBar)
    }
}

struct AppView: View {

    @State private var showTabBar: Bool = false

    var body: some View {
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("TabBar")
                }
            },
            onboardingView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("onboarding")
                }
            }
        )
        .onTapGesture {
            showTabBar.toggle()
        }
    }
}

#Preview {
    AppView()
}
