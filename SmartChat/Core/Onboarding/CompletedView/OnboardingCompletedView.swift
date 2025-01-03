//
//  CompletedView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/12/24.
//

import SwiftUI

struct OnboardingCompletedView: View {

    @Environment(AppState.self) private var root

    @State private var isCompletingProfileSetup: Bool = false

    var selectedColor: Color = .orange

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Set up complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxHeight: .infinity)
                .foregroundStyle(selectedColor)

            Text("Set up your profile and you're ready to strat the chatting.")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, content: {
            ctaButton
        })
        .padding(24)
        .toolbar(.hidden, for: .navigationBar)
    }

    private var ctaButton: some View {
        ZStack {
            if isCompletingProfileSetup {
                ProgressView()
                    .tint(.white)
            } else {
                Text("Finish")
            }
        }
        .callToActionButton()
        .anyButton(.press, action: {
            onFinishButtonPressed()
        })
        .disabled(isCompletingProfileSetup)
    }

    func onFinishButtonPressed() {
        isCompletingProfileSetup = true
        Task {
            try await Task.sleep(for: .seconds(3))
            isCompletingProfileSetup = false
//            try await saveUserprofile(color: selectedColor)
            root.updateViewState(showTabBarView: true)
        }

    }
}

#Preview {
    OnboardingCompletedView(selectedColor: .mint)
        .environment(AppState())
}
