//
//  AIGenerateRouteView.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct AIGenerateRouteView: View {
    var body: some View {
        VStack {
            Text("Составь маршрут пожалуйста!")
        }
        .navigationTitle("Попроси нейросеть")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton())
    }
}

struct AIGenerateRouteView_Previews: PreviewProvider {
    static var previews: some View {
        AIGenerateRouteView()
    }
}
