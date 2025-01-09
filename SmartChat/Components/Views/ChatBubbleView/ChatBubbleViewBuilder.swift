//
//  ChatBubbleViewBuilder.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 06/01/25.
//

import SwiftUI

struct ChatBubbleViewBuilder: View {

    var message: ChatMessageModel = .mock
    var isCurrentUser: Bool = false
    var imageName: String?
    var onImagePressed: (() -> Void)?

    var body: some View {
        ZStack {
            ChatBubbleView(
                text: message.content ?? "",
                textColor: isCurrentUser ? .white : .primary,
                backGroundColor: isCurrentUser ? .accent : Color(uiColor: .systemGray6),
                showImage: !isCurrentUser,
                imageName: imageName,
                onImagePressed: onImagePressed
            )
            .frame(maxWidth: .infinity, alignment: isCurrentUser ? .trailing : .leading)
            .padding(.leading, isCurrentUser ? 75 : 0)
            .padding(.trailing, isCurrentUser ? 0 : 75)
        }
    }
}

#Preview {
    ScrollView {
        VStack(spacing: 24) {
            ChatBubbleViewBuilder()
            ChatBubbleViewBuilder(isCurrentUser: true)
            ChatBubbleViewBuilder(
                message: ChatMessageModel(
                    id: UUID().uuidString,
                    chatId: UUID().uuidString,
                    authorId: UUID().uuidString,
                    content: "Essa é uma messagem teste só pra ver um texto mais longo deixar o codigo mais seguro futuramente",
                    seenByIds: nil,
                    dateCreated: .now
                )
            )

            ChatBubbleViewBuilder(
                message: ChatMessageModel(
                    id: UUID().uuidString,
                    chatId: UUID().uuidString,
                    authorId: UUID().uuidString,
                    content: "Essa é uma messagem teste só pra ver um texto mais longo deixar o codigo mais seguro futuramente",
                    seenByIds: nil,
                    dateCreated: .now
                ),
                isCurrentUser: true
            )
        }
        .padding(12)
    }

}
