//
//  NavigationPathOption.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 12/01/25.
//
import SwiftUI
import Foundation

enum NavigationPathOption: Hashable {
    case chat(avatarId: String)
    case category(category: CharacterOption, imageName: String)
}

extension View {
    func navigationDestinationForCoreModule(path: Binding<[NavigationPathOption]>) -> some View {
        self
            .navigationDestination(for: NavigationPathOption.self) { newValue in
                switch newValue {
                case .chat(avatarId: let avatarId):
                    ChatView(avatarId: avatarId)
                case .category(category: let category, imageName: let imageName):
                    CategoryListView(path: path, category: category, imageName: imageName)
                }
            }
    }
}
