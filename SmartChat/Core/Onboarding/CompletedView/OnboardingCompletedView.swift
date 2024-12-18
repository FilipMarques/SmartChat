//
//  CompletedView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/12/24.
//

import SwiftUI

struct OnboardingCompletedView: View {

    @Environment(AppState.self) private var root

    var body: some View {
        VStack {
            Text("Onboarding")
                .frame(maxHeight: .infinity)

            Button {
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding(16)
    }

    func onFinishButtonPressed() {
        root.updateViewState(showTabBarView: true)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
