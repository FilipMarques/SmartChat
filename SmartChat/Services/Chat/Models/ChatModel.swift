//
//  ChatModel.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 02/01/25.
//

import Foundation

struct ChatModel: Identifiable {
    let id: String
    let userId: String
    let avatarId: String
    let dateCreated: Date
    let dateModified: Date

    static var mock: Self {
        mocks[0]
    }

    static var mocks: [Self] {
        [
            ChatModel(
                id: "mock_chat_1",
                userId: "user1",
                avatarId: "avatar1",
                dateCreated: Date(),
                dateModified: Date()
            ),
            ChatModel(
                id: "mock_chat_2",
                userId: "user2",
                avatarId: "avatar2",
                dateCreated: Date().adding(
                    hours: -1
                ),
                dateModified: Date().adding(
                    minutes: -30
                )
            ),
            ChatModel(
                id: "mock_chat_3",
                userId: "user3",
                avatarId: "avatar3",
                dateCreated: Date().adding(
                    hours: -2
                ),
                dateModified: Date().adding(
                    hours: -1
                )
            ),
            ChatModel(
                id: "mock_chat_4",
                userId: "user4",
                avatarId: "avatar4",
                dateCreated: Date().adding(
                    hours: -3
                ),
                dateModified: Date().adding(
                    hours: -1.5
                )
            ),
            ChatModel(
                id: "mock_chat_5",
                userId: "user5",
                avatarId: "avatar5",
                dateCreated: Date().adding(
                    days: -1
                ),
                dateModified: Date().adding(
                    hours: -2
                )
            )
        ]
    }
}
