//
//  SettingsView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/12/24.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.dismiss) private var dismiss
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
        dismiss()
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabBarView: false)
        }

    }
}

#Preview {
    SettingsView()
        .environment(AppState())
}
