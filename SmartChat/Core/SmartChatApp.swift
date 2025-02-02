//
//  SmartChatApp.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 16/12/24.
//

import SwiftUI
import Firebase

@main
struct SmartChatApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            EnvironmentBuilderView {
                AppView()
            }
        }
    }
}

struct EnvironmentBuilderView<Content: View>: View {

    @ViewBuilder var content: () -> Content

    var body: some View {
        content()
            .environment(AuthManager(service: FirebaseAuthService()))
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        FirebaseApp
            .configure()

    return true
  }
}
