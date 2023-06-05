//
//  SettingsSheet.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct SettingsSheet: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isSystemMode") private var isSystemMode = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text("Настройки")
                .font(.custom("MavenPro-SemiBold", size: 24))
                .padding(.horizontal, 30)
                .padding(.bottom, 30)
            DarkModeButton()
                .padding(.bottom, 20)
            Divider()
                .padding(.bottom, 20)
            HStack {
                Toggle("Системная тема", isOn: $isSystemMode)
                    .toggleStyle(iOSCheckbox())
                    .font(.custom("MavenPro", size: 20))
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 20)
            Divider()
                .padding(.bottom, 20)
            AppButton(
                background: Color.appRed,
                title: "Выйти",
                titleSize: 18,
                titleFont: "Poppins-Regular"
            )
            .padding(.horizontal, 30)
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct SettingsSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheet()
    }
}
