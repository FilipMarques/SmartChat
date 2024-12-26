//
//  CarouselView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 23/12/24.
//

import SwiftUI

struct CarouselView: View {

    var items: [AvatarModel] = AvatarModel.mocks

    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(items, id: \.self) { item in
                        HeroCellView(
                            title: item.name,
                            subTitle: item.characterDescription,
                            imageName: item.profileImageName
                        )
                        .scrollTransition(.interactive.threshold(.visible(0.95)), transition: { content, phase in
                            content
                                .scaleEffect(phase.isIdentity ? 1 : 0.9)
                        })
                        //                        .fill(index % 2 == 0 ? Color.red : Color.blue)
                        .containerRelativeFrame(.horizontal, alignment: .center)
                    }
                }
            }
            .frame(height: 200)
            .scrollIndicators(.hidden)
            .scrollTargetLayout()
            .scrollTargetBehavior(.paging)

            HStack(spacing: 8) {
                ForEach(items, id: \.self) { item in
                    Circle()
                        .fill(.accent)
                        .frame(width: 8, height: 8)
                }
            }
        }
    }
}

#Preview {
    CarouselView()
        .padding()
}
