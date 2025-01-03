//
//  UserModel.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 02/01/25.
//

import Foundation
import SwiftUI

struct UserModel {

    let userId: String
    let dateCreated: Date?
    let didCompleteOnboarding: Bool?
    let profileColorHex: String?

    init(
        userId: String,
        dateCreated: Date? = nil,
        didCompleteOnboarding: Bool? = nil,
        profileColorHex: String? = nil
    ) {
        self.userId = userId
        self.dateCreated = dateCreated
        self.didCompleteOnboarding = didCompleteOnboarding
        self.profileColorHex = profileColorHex
    }

    var profileColorCalculated: Color {
        guard let profileColorHex else {
            return Color.accent
        }

        return Color(hex: profileColorHex)
    }

    static var mock: Self {
        mocks[0]
    }

    static var mocks: [Self] {
        let now = Date()
        return [
            UserModel(
                userId: "user1",
                dateCreated: now,
                didCompleteOnboarding: true,
                profileColorHex: "#33A1FF"
            ),
            UserModel(
                userId: "user2",
                dateCreated: now.adding(days: -1),
                didCompleteOnboarding: false,
                profileColorHex: "#FF5733"
            ),
            UserModel(
                userId: "user3",
                dateCreated: now.adding(days: -3).adding(hours: -2),
                didCompleteOnboarding: true,
                profileColorHex: "#7DFF33"
            ),
            UserModel(
                userId: "user4",
                dateCreated: now.adding(days: -5).adding(hours: -4),
                didCompleteOnboarding: nil,
                profileColorHex: "#FF33A1"
            )
        ]
    }

}
