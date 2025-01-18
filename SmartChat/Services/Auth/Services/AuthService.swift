//
//  AuthService.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/01/25.
//
import SwiftUI

extension EnvironmentValues {
    @Entry var authService: AuthService = MockAuthService()
}

protocol AuthService: Sendable {
    func getAuthenticateUser() -> UserAuthInfo?
    func signInAnonymously() async throws -> (user: UserAuthInfo, isNewUser: Bool)
    func signInApple() async throws -> (user: UserAuthInfo, isNewUser: Bool)
    func signOut() throws
    func deleteAccount() async throws
}
