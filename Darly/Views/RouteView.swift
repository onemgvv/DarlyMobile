//
//  RouteView.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct RouteView: View {
    @State var title: String = ""
    var body: some View {
        VStack {
            Text("Hello, Route!")
        }
        .navigationTitle(title)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton())
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
