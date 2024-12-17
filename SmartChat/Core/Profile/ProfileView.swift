//
//  ProfileView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 17/12/24.
//

import SwiftUI

struct ProfileView: View {

    @State private var showSettingsView: Bool = false

    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingsButton

                    }
                }
        }
        .sheet(isPresented: $showSettingsView) {
            Text("SettingsView")
        }

    }

    private var settingsButton: some View {
        Button {
            onSettingsButtonPressed()
        } label: {
            Image(systemName: "gear")
        }
    }

    private func onSettingsButtonPressed() {
        showSettingsView = true
    }
}

#Preview {
    ProfileView()
}
