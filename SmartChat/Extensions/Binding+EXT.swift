//
//  Binding+EXT.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 07/01/25.
//

import SwiftUI
import Foundation

extension Binding where Value == Bool {
    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
