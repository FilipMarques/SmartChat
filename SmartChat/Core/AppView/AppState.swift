//
//  AppState.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 18/12/24.
//
import SwiftUI

@Observable
class AppState {
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.showTabbarview = showTabBar
        }
    }

    init(showTabBar: Bool = UserDefaults.showTabbarview) {
        self.showTabBar = showTabBar
    }

    func updateViewState(showTabBarView: Bool) {
        showTabBar = showTabBarView
    }
}

extension UserDefaults {

    private struct Keys {
        static let showTabbarView = "showTabbarView"
    }
    static var showTabbarview: Bool {
        get {
            standard.bool(forKey: Keys.showTabbarView)
        }
        set {
            standard.set(newValue, forKey: Keys.showTabbarView)
        }
    }
}
