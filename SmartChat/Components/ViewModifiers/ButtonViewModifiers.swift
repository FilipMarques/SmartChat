//
//  ButtonViewModifiers.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 28/12/24.
//

import SwiftUI

struct HighlightButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .overlay {
                configuration.isPressed ? Color.accent.opacity(0.4) : Color.accent.opacity(0)
            }
            .animation(.smooth, value: Color.accent.opacity(0))
    }
}

struct PressableButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

enum ButtonStyleOption {
    case press, highlight, plain
}

extension View {
    @ViewBuilder
    func anyButton(option: ButtonStyleOption = .plain, action: @escaping () -> Void) -> some View {
        switch option {
        case .highlight:
            self.highLightButton(action: action)
        case .press:
            self.pressableButton(action: action)
        case .plain:
            self.plainButton(action: action)
        }
    }

    private func plainButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PlainButtonStyle())
    }

    private func highLightButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(HighlightButtonStyle())
    }

    private func pressableButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PressableButtonStyle())
    }
}

#Preview {
    VStack {
        Text("Tap me")
            .padding()
            .frame(maxWidth: .infinity)
            .tappableBackground()
            .anyButton(option: .highlight, action: {

            })
            .padding()

        Text("Tap me")
            .callToActionButton()
            .anyButton(option: .press, action: {

            })
            .padding()

        Text("Tap me")
            .callToActionButton()
            .anyButton(option: .plain, action: {

            })
            .padding()

    }

}
