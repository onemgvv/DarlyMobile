//
//  ContentView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

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
