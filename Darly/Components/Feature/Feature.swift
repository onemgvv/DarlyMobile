//
//  Feature.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import SwiftUI

struct Feature: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Ты можешь")
                .font(.custom("MavenPro-Medium", size: 20))
            VStack {
                NavigationLink(destination: AIGenerateRouteView(), label: {
                    Text("Построить маршрут сам")
                        .font(.custom("MavenPro-Medium", size: 16))
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.mainColor)
                        .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color.clear))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .strokeBorder(Color.purpleBlue, lineWidth: 1)
                        )
                })
                .buttonStyle(PressedButtonStyle())

                Text("или")
                
                NavigationLink(destination: AIGenerateRouteView(), label: {
                    Text("Попросить нейросеть")
                        .font(.custom("MavenPro-Medium", size: 16))
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color.purpleBlue))
                })
                .buttonStyle(PressedButtonStyle())
            }
            .padding(20)
            .frame(maxWidth: .infinity)
            .background(Color.tabBarBackground)
            .cornerRadius(15)
        }
    }
}

struct Feature_Previews: PreviewProvider {
    static var previews: some View {
        Feature()
    }
}
