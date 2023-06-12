//
//  ContentView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

extension Array: RawRepresentable where Element: Codable {
public init?(rawValue: String) {
    guard let data = rawValue.data(using: .utf8),
          let result = try? JSONDecoder().decode([Element].self, from: data)
    else {
        return nil
    }
    self = result
}

public var rawValue: String {
    guard let data = try? JSONEncoder().encode(self),
          let result = String(data: data, encoding: .utf8)
    else {
        return "[]"
    }
    return result
    }
}

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isSystemMode") private var isSystemMode = false
    
    var body: some View {
        NavigationView {
            VStack {
                AppTabBarView()
            }
            .preferredColorScheme(isDarkMode && !isSystemMode ? .dark : isSystemMode ? colorScheme : .light)
            .background(Color("appBackground"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
