//
//  ProfileModelView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 07/01/25.
//

import SwiftUI

struct ProfileModelView: View {

    var imageName: String? = Constants.randomImage
    var title: String? = "Alpha"
    var subtitle: String? = "Alien"
    var headline: String? = "An alien in the park"
    var onXMarkPressed: () -> Void = { }

    var body: some View {
        VStack(spacing: 0) {
            if let imageName {
                ImageLoaderView(urlString: imageName, forceTransitionAnimation: true)
                    .aspectRatio(1, contentMode: .fit)
            }

            VStack(alignment: .leading) {
                if let title {
                    Text(title)
                        .font(.title3)
                        .fontWeight(.semibold)
                }

                if let subtitle {
                    Text(subtitle)
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }

                if let headline {
                    Text(headline)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(24)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(.thinMaterial)
        .cornerRadius(16)
        .overlay(
            Image(systemName: "xmark.circle.fill")
                .font(.title)
                .foregroundStyle(Color.black)
                .padding(4)
                .tappableBackground()
                .anyButton {
                    onXMarkPressed()
                }
                .padding(8)
            , alignment: .topTrailing
        )
    }
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()

        ProfileModelView()
            .padding(40)
    }

}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()

        ProfileModelView(imageName: nil)
            .padding(40)
    }

}
