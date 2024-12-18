//
//  View+EXT.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/12/24.
//

import SwiftUI

extension View {
    func callToActionButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(.accent)
            .cornerRadius(16)
    }
}
