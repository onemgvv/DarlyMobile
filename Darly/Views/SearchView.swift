//
//  SearchView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct SearchView: View {
    private let popular: [AppContentItem] = [
        AppContentItem(title: "Сулакский каньон", subtitle: "Самый глубокий в мире"),
        AppContentItem(title: "Дербент", subtitle: "Древнейший город России"),
        AppContentItem(title: "Чиркейское водохранилище", subtitle: "Интересный факт"),
        AppContentItem(title: "Гамсутль", subtitle: "Интересный факт")
    ]
    
    private let summerTrips: [AppContentItem] = [
        AppContentItem(
            title: "Сулакский каньон", subtitle: "Самый глубокий в мире",
            itemWidth: 220
        ),
        AppContentItem(
            title: "Дербент", subtitle: "Древнейший город России",
            itemWidth: 220
        ),
        AppContentItem(
            title: "Гамсутль", subtitle: "Интересный факт",
            itemWidth: 220
        )
    ]
    
    private let friendsTrips: [AppContentItem] = [
        AppContentItem(
            title: "Сулакский каньон", subtitle: "Самый глубокий в мире",
            itemWidth: 280
        ),
        AppContentItem(
            title: "Дерент", subtitle: "Древнейший город России",
            itemWidth: 280
        ),
        AppContentItem(
            title: "Чиркейское водохранилище", subtitle: "Интересный факт",
            itemWidth: 280
        ),
        AppContentItem(
            title: "Гамсутль", subtitle: "Интересный факт",
            itemWidth: 280
        )
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                Header(isHome: false)
                Spacer(minLength: 10)
                SearchBar()
                Spacer(minLength: 25)
                AppContent(
                    title: "Популярное",
                    items: popular
                )
                Spacer(minLength: 25)
                AppContent(
                    title: "Куда поехать летом ?",
                    items: summerTrips
                )
                Spacer(minLength: 25)
                AppContent(
                    title: "Где были мои друзья ?",
                    items: friendsTrips
                )
                Spacer(minLength: 25)
            }
        }
        .padding(.top, 1)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
