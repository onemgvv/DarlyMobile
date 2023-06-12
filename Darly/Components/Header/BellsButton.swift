//
//  BellsButton.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct BellsButton: View {
    @State private var goToNotifications = false
    @State var bellWidth: CGFloat = 26
    @State var bellHeight: CGFloat = 26
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationLink(destination: NotificationsView(), label: {
            if isDarkMode {
                Image("lBell")
                    .resizable()
                    .frame(width: bellWidth, height: bellHeight)
            } else {
                Image("Bell")
                    .resizable()
                    .frame(width: bellWidth, height: bellHeight)
            }
        })
    }
}

struct BellsButton_Previews: PreviewProvider {
    static var previews: some View {
        BellsButton()
    }
}
