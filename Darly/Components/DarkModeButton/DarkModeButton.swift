//
//  DarkModeButton.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct DarkModeButton: View {
    @AppStorage("isSystemMode") private var isSystemMode = false
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        HStack {
            Toggle("Темная тема", isOn: $isDarkMode)
                .disabled(isSystemMode)
                .foregroundColor(.appText)
                .font(.custom("MavenPro", size: 20))
        }
        .padding(.horizontal, 30)
    }
}

struct DarkModeButton_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeButton()
    }
}
