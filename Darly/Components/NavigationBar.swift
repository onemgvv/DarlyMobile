//
//  NavigationBar.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink(
                    destination:
                        Text("Destination 1")
                        .navigationTitle("Darly")
                        .navigatio nBarBackButtonHidden(true),
                    label: {
                        Text("Home")
                    }
                )
            }.navigationTitle("Darly")
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
