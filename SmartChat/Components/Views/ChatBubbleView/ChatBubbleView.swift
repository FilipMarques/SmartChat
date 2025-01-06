//
//  ChatBubbleView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 06/01/25.
//

import SwiftUI

struct ChatBubbleView: View {

    var text: String = "This is sample text"
    var textColor: Color = .primary
    var backGroundColor: Color = Color(uiColor: .systemGray6)
    var showImage: Bool = true
    var imageName: String?

    let offset: CGFloat = 14

    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            if showImage {
                ZStack {
                    if let imageName {
                        ImageLoaderView(urlString: imageName)
                    } else {
                        Rectangle()
                            .fill(.secondary)
                    }
                }
                .frame(width: 45, height: 45)
                .clipShape(Circle())
                .offset(y: offset)
            }

            Text(text)
                .font(.body)
                .foregroundStyle(textColor)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(backGroundColor)
                .cornerRadius(6)
        }
        .padding(.bottom, showImage ? offset : 0)
    }
}

#Preview {
    ScrollView {
        VStack(spacing: 16) {
            ChatBubbleView()

            ChatBubbleView(
                text: "Oi, tudo bem? Meu nome é Filipe sou Dev ios. "
            )

            ChatBubbleView(
                textColor: .white,
                backGroundColor: .accent,
                showImage: false,
                imageName: nil
            )

            ChatBubbleView(
                text: "Oi, tudo bem? Meu nome é Filipe sou Dev ios. ",
                textColor: .white,
                backGroundColor: .accent,
                showImage: false,
                imageName: nil
            )

        }
        .padding(8)
    }

}
