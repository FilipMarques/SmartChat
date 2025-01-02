//
//  ChatMessageModel.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 02/01/25.
//

import Foundation

struct ChatMessageModel {
    let id: String
    let userId: String
    let messageText: String
    let dateCreated: Date
    let seenByIds: [String]

    init(id: String, userId: String, messageText: String, dateCreated: Date, seenByIds: [String]) {
        self.id = id
        self.userId = userId
        self.messageText = messageText
        self.dateCreated = dateCreated
        self.seenByIds = seenByIds
    }

    static var mock: ChatMessageModel {
        mocks[0]
    }

    static var mocks: [ChatMessageModel] {
        [
            ChatMessageModel(
                id: "1",
                userId: "user1",
                messageText: "Hello, world!",
                dateCreated: Date().adding(minutes: -10),
                seenByIds: ["user2", "user3"]
            ),
            ChatMessageModel(
                id: "2",
                userId: "user2",
                messageText: "Hi there!",
                dateCreated: Date().adding(minutes: -9),
                seenByIds: ["user1"]
            ),
            ChatMessageModel(
                id: "3",
                userId: "user3",
                messageText: "How's it going?",
                dateCreated: Date().adding(minutes: -8),
                seenByIds: ["user1", "user2"]
            ),
            ChatMessageModel(
                id: "4",
                userId: "user1",
                messageText: "All good here!",
                dateCreated: Date().adding(minutes: -7),
                seenByIds: []
            ),
            ChatMessageModel(
                id: "5",
                userId: "user2",
                messageText: "Same here.",
                dateCreated: Date().adding(minutes: -6),
                seenByIds: ["user1", "user3"]
            )
        ]
    }
}
