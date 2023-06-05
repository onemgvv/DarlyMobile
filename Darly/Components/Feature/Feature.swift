//
//  Feature.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import SwiftUI

struct Feature: View {
    @State private var goToCreateSelfRoute = false
    @State private var goToAIGenerateRoute = false
    
    var body: some View {
        NavigationLink(destination: SelfMadeRoute(), isActive: $goToCreateSelfRoute) { EmptyView() }
        NavigationLink(destination: AIGenerateRouteView(), isActive: $goToAIGenerateRoute) { EmptyView() }
        
        VStack (alignment: .leading, spacing: 10) {
            Text("Ты можешь")
                .font(.custom("MavenPro-Medium", size: 20))
            VStack {
                AppButton(
                    stroke: .purpleBlue,
                    strokeWidth: 1,
                    background: .appBackground,
                    color: .mainColor,
                    title: "Построить маршрут сам",
                    cornerRadius: 15,
                    action: {
                        goToCreateSelfRoute.toggle()
                    }
                )
                Text("или")
                AppButton(
                    background: .purpleBlue,
                    title: "Попросить нейросеть",
                    cornerRadius: 15,
                    action: {
                        goToAIGenerateRoute.toggle()
                    }
                )
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
