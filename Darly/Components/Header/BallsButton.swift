//
//  BallsButton.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct BallsButton: View {
    @State var ballsWidth: CGFloat = 34
    @State var ballsHeight: CGFloat = 34
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var showingSheet = false
    
    var body: some View {
        Button(action: {
            showingSheet.toggle()
        }, label: {
            if isDarkMode {
                Image("lballsmenu")
                    .resizable()
                    .frame(width: ballsWidth, height: ballsHeight)
            } else {
                Image("ballsmenu")
                    .resizable()
                    .frame(width: ballsWidth, height: ballsHeight)
            }
        })
        .sheet(isPresented: $showingSheet) {
            SettingsSheet()
                .presentationDetents([
                    .fraction(0.5),
                ])
        }
    }
}

struct BallsButton_Previews: PreviewProvider {
    static var previews: some View {
        BallsButton()
    }
}
