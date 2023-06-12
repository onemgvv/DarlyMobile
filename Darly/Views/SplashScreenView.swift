//
//  SplashScreenView.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct SplashScreenView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isOldUser") private var isOldUser = false
    @State private var isActive = false
    
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var textOpacity = 0.0
    
    var body: some View {
        if isActive && !isOldUser {
            StartScreenView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        } else if isActive && isOldUser {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        } else {
            Spacer()
            VStack {
                VStack {
                    Image(isDarkMode ? "darkLogo" : "lightLogo")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                VStack(spacing: 15) {
                    Text("Darly")
                        .font(.custom("MavenPro-SemiBold", size: 48))
                    Text("Создай свой маршрут")
                        .font(.custom("MavenPro-Regular", size: 18))
                }
                .opacity(textOpacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.textOpacity = 1.0
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() +  2.5) {
                    self.isActive = true
                }
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
            Spacer()
            Button(action: {}) {
                HStack(alignment: .center) {
                    Text("Поехали!")
                        .font(.custom("MavenPro-SemiBold", size: 18))
                    Image(systemName: "chevron.right")
                        .font(.system(size: 18))
                }
                .padding(.vertical, 14)
            }
            .opacity(0)
            .buttonStyle(PressedButtonStyle())
            Spacer()
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
