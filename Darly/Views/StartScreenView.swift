//
//  StartScreenView.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct StartScreenView: View {
    @State private var isStartScreen = true
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isOldUser") private var isNewUser = false
    
    var body: some View {
        if isStartScreen {
            VStack {
                Spacer()
                VStack {
                    Image(isDarkMode ? "darkLogo" : "lightLogo")
                }
                VStack(spacing: 15) {
                    Text("Darly")
                        .font(.custom("MavenPro-SemiBold", size: 48))
                    Text("Создай свой маршрут")
                        .font(.custom("MavenPro-Regular", size: 18))
                }
                Spacer()
                Button(action: {
                    isStartScreen.toggle()
                    isNewUser.toggle()
                }) {
                    HStack(alignment: .center) {
                        Text("Поехали!")
                            .font(.custom("MavenPro-SemiBold", size: 18))
                        Image(systemName: "chevron.right")
                            .font(.system(size: 18))
                    }
                    .padding(.vertical, 14)
                }
                .frame(width: 195)
                .foregroundColor(Color.white)
                .background(Color.purpleBlue)
                .cornerRadius(10)
                Spacer()
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        } else {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
    }
}
