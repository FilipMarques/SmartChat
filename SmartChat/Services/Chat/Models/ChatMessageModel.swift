//
//  ChatMessageModel.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 02/01/25.
//

import Foundation

struct ChatMessageModel {
    let id: String
    let chatId: String
    let authorId: String?
    let content: String?
    let seenByIds: [String]?
    let dateCreated: Date?

    init(
        id: String,
        chatId: String,
        authorId: String? = nil,
        content: String? = nil,
        seenByIds: [String]? = nil,
        dateCreated: Date? = nil
    ) {
        self.id = id
        self.chatId = chatId
        self.authorId = authorId
        self.content = content
        self.seenByIds = seenByIds
        self.dateCreated = dateCreated
    }

    func hasBeenSeenBy(userId: String) -> Bool {
        guard let seenByIds else { return false }
        return seenByIds.contains(userId)
    }

    static var mock: ChatMessageModel {
        mocks[0]
    }

    static var mocks: [ChatMessageModel] {
        [
            ChatMessageModel(
                id: "1",
                chatId: "chat1",
                authorId: "user1",
                content: "Hello, world!",
                seenByIds: ["user2", "user3"],
                dateCreated: Date().adding(minutes: -10)
            ),
            ChatMessageModel(
                id: "2",
                chatId: "chat1",
                authorId: "user2",
                content: "Hi there!",
                seenByIds: ["user1"],
                dateCreated: Date().adding(minutes: -9)
            ),
            ChatMessageModel(
                id: "3",
                chatId: "chat1",
                authorId: "user3",
                content: "How's it going?",
                seenByIds: ["user1", "user2"],
                dateCreated: Date().adding(minutes: -8)
            ),
            ChatMessageModel(
                id: "4",
                chatId: "chat1",
                authorId: "user1",
                content: "All good here!",
                seenByIds: [],
                dateCreated: Date().adding(minutes: -7)
            ),
            ChatMessageModel(
                id: "5",
                chatId: "chat1",
                authorId: "user2",
                content: "Same here.",
                seenByIds: ["user1", "user3"],
                dateCreated: Date().adding(minutes: -6)
            )
        ]
    }
}
