//
//  CategoryCellView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 26/12/24.
//

import SwiftUI

struct CategoryCellView: View {

    var title: String = "Alines"
    var imageName: String = Constants.randomImage
    var font: Font = .title2
    var cornerRadius: CGFloat = 16

    var body: some View {
        ImageLoaderView(urlString: imageName)
            .aspectRatio(1, contentMode: .fit)
            .overlay(alignment: .bottomLeading, content: {
                Text(title)
                    .font(font)
                    .fontWeight(.semibold)
                    .padding(16)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .addingGradientBackground()

            })
            .cornerRadius(cornerRadius)
    }
}

#Preview {
    VStack {
        CategoryCellView()
            .frame(width: 150)

        CategoryCellView()
            .frame(width: 300)
    }

}
