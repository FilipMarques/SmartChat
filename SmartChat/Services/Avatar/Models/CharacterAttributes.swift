//
//  AvatarAttributes.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 06/01/25.
//

import Foundation

enum CharacterAction: String, CaseIterable, Hashable {
    case smiling, sitting, eating, drinking, walking, shopping, studying, working, relaxing, fighting, crying
    static var `default`: Self {
        .smiling
    }
}

enum CharacterLocation: String, CaseIterable, Hashable {
    case park, mall, museum, city, desert, forest, space
    static var `default`: Self {
        .park
    }
}

enum CharacterOption: String, CaseIterable, Hashable {
    case man, woman, alien, dog, cat

    static var `default`: Self {
        .man
    }

    var startsWithVowel: Bool {
        switch self {
        case .alien:
            return true
        default:
            return false
        }
    }
}
