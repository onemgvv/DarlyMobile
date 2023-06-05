//
//  DarlyApp.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

@main
struct DarlyApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .frame(maxWidth: .infinity)
                .background(Color("appBackground"))
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
