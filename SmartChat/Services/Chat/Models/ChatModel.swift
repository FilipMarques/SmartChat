//
//  ChatModel.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 02/01/25.
//

import Foundation

struct ChatModel {
    let id: String
    let userId: String
    let avatarId: String
    let dateCreated: Date
    let dateModified: Date

    init(id: String, userId: String, avatarId: String, dateCreated: Date, dateModified: Date) {
        self.id = id
        self.userId = userId
        self.avatarId = avatarId
        self.dateCreated = dateCreated
        self.dateModified = dateModified
    }
}
