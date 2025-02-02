//
//  CategoryListView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 10/01/25.
//

import SwiftUI

struct CategoryListView: View {

    @Binding var path: [NavigationPathOption]
    @State private var avatars: [AvatarModel] = AvatarModel.mocks
    var category: CharacterOption = .alien
    var imageName: String = Constants.randomImage

    var body: some View {
        List {
            CategoryCellView(
                title: category.plural.capitalized,
                imageName: imageName,
                font: .largeTitle,
                cornerRadius: 0
            )
            .removeListRowFormatting()

            ForEach(avatars, id: \.self) { avatar in
                CustomListCellView(
                    imageName: avatar.profileImageName,
                    title: avatar.name,
                    subtitle: avatar.characterDescription
                )
                .anyButton(.highlight, action: {
                    onAvatarPressed(avatar: avatar)
                })
                .removeListRowFormatting()
            }
        }
        .ignoresSafeArea()
        .listStyle(PlainListStyle())
    }

    private func onAvatarPressed(avatar: AvatarModel) {
        path.append(.chat(avatarId: avatar.avatarId))
    }
}

#Preview {
    CategoryListView(path: .constant([]))
}
