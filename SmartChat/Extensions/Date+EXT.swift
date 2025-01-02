//
//  Date+EXT.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 02/01/25.
//
import Foundation
extension Date {
    func adding(seconds: TimeInterval) -> Date {
        self.addingTimeInterval(seconds)
    }

    func adding(minutes: TimeInterval) -> Date {
        self.addingTimeInterval(minutes * 60)
    }

    func adding(hours: TimeInterval) -> Date {
        self.addingTimeInterval(hours * 3600)
    }

    func adding(days: TimeInterval) -> Date {
        self.addingTimeInterval(days * 86400)
    }
}
