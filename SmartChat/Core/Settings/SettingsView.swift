//
//  SettingsView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/12/24.
//

import SwiftUI

struct SettingsView: View {

    @Environment(AppState.self) private var appState

    var body: some View {
        NavigationStack {
            List {
                Button {
                    onSignOutPressed()
                } label: {
                    Text("Sign Out")
                }
            }
            .navigationTitle("Settings")
        }
    }

    func onSignOutPressed() {
        appState.updateViewState(showTabBarView: false)
    }
}

#Preview {
    SettingsView()
        .environment(AppState())
}
