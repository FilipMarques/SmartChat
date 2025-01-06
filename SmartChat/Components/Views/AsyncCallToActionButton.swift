//
//  AsyncCallToActionButton.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 06/01/25.
//

import SwiftUI

struct AsyncCallToActionButton: View {

    var isLoading: Bool
    var titleButton: String = ""
    let action: () -> Void

    var body: some View {
        ZStack {
            if isLoading {
                ProgressView()
                    .tint(.white)
            } else {
                Text(titleButton)
            }
        }
        .callToActionButton()
        .anyButton(.press) {
            action()
        }
        .disabled(isLoading)
    }
}

private struct PreviewView: View {

    @State private var isLoading: Bool = false

    var body: some View {
        AsyncCallToActionButton(
            isLoading: isLoading,
            titleButton: "Save") {
                isLoading = true

                Task {
                    try? await Task.sleep(for: .seconds(3))
                    isLoading = false
                }
            }
    }
}

#Preview {
    PreviewView()
        .padding()
}
