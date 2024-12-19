//
//  ImageLoaderView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 19/12/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {

    var urlString: String = "https://picsum.photos/600/600"
    var resizingMode: ContentMode = .fill

    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay(
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsTightening(false)
            )
            .clipped()

    }
}

#Preview {
    ImageLoaderView()
        .frame(width: 100, height: 200)
}
