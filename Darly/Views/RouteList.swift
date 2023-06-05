//
//  RouteList.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct RouteList: View {
    @State var title = ""
    var body: some View {
        VStack {
            Text("Hello, RouteList!")
        }
        .navigationTitle(title)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton())
    }
}

struct RouteList_Previews: PreviewProvider {
    static var previews: some View {
        RouteList()
    }
}
