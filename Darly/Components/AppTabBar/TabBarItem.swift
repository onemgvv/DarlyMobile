//
//  TabBarItem.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case home, search, add, history, profile

    var iconName: String {
        switch self {
        case .home: return "home"
        case .search: return "search"
        case .add: return "add_ring"
        case .history: return "clock"
        case .profile: return "user"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .search: return "Search"
        case .add: return ""
        case .history: return "History"
        case .profile: return "Profile"
        }
    }
    
    var background: Color {
        switch self {
        case .home, .search, .history, .profile: return Color.clear
        case .add: return .purpleBlue
        }
    }
}
