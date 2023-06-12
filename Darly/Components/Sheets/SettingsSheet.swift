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
    
    @AppStorage("printChooseCountryAlert") private var printChooseCountryAlert: Bool = false
    @AppStorage("printChoosePreferAlert") private var printChoosePreferAlert: Bool = false
    @AppStorage("printChooseFinalParams") private var printChooseFinalParams: Bool = false
    
    @AppStorage("selectedCountries") private var selectedCountries: [String] = []
    @AppStorage("selectedPrefers") private var selectedPrefers: [String] = []
    
    @AppStorage("tourPeopleCount") var tourPeopleCount: String = "1"
    @AppStorage("tourDaysCount") var tourDaysCount: String = "1"
    @AppStorage("tourPlaceCount") var tourPlaceCount: String = ""
    
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
            
            Button(action: {
                printChooseCountryAlert = false
                printChoosePreferAlert = false
                printChooseFinalParams = false
                
                selectedCountries = []
                selectedPrefers = []
                
                tourPeopleCount = "1"
                tourDaysCount = "1"
                tourPlaceCount = ""
                
                isDarkMode = false
                isSystemMode = false
            }, label: {
                HStack {
                    Text("Очистить кэш")
                        .foregroundColor(Color.appText)
                        .font(.custom("Poppins-Medium", size: 20))
                    Spacer()
                    Image(systemName: "trash")
                        .foregroundColor(Color.appText)
                        .font(.system(size: 20))
                }
                .padding(.horizontal, 30)
            })
            .buttonStyle(PressedButtonStyle())
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
