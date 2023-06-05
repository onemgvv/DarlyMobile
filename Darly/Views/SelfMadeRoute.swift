//
//  SelfMadeRoute.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct SelfMadeRoute: View {
    var body: some View {
        VStack {
            Text("Соберу сам")
        }
        .navigationTitle("Собери маршрут сам")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton())
    }
}

struct SelfMadeRoute_Previews: PreviewProvider {
    static var previews: some View {
        SelfMadeRoute()
    }
}
