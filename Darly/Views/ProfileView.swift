//
//  ProfileView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct ProfileView: View {
    private let myTrips: [AppContentItem] = [
        AppContentItem(title: "Сулакский каньон", subtitle: "Самый глубокий в мире"),
        AppContentItem(title: "Дербент", subtitle: "Древнейший город России"),
        AppContentItem(title: "Чиркейское водохранилище", subtitle: "Интересный факт"),
        AppContentItem(title: "Гамсутль", subtitle: "Интересный факт")
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Header(isHome: false, isProfile: true)
                ProfileCard()
                    .padding(.horizontal, 30)
                    .padding(.bottom, 25)
                AppContent(
                    title: "Мои маршруты",
                    items: myTrips
                )
            }
        }
        .padding(.top, 1)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
