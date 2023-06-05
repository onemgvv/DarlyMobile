//
//  AddRouteView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct AddRouteView: View {
    var body: some View {
        VStack{
            Header(isHome: false)
            Text("Add New Route")
        }
        .padding(.top, 1)
    }
}

struct AddRouteView_Previews: PreviewProvider {
    static var previews: some View {
        AddRouteView()
    }
}
