//
//  HomeView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct HomeView: View {
    private let recommendations: [AppContentItem] = [
        AppContentItem(title: "Сулакский каньон", subtitle: "Самый глубокий в мире"),
        AppContentItem(title: "Дерент", subtitle: "Древнейший город России"),
        AppContentItem(title: "Чиркейское водохранилище", subtitle: "Интересный факт"),
        AppContentItem(title: "Гамсутль", subtitle: "Интересный факт")
    ]
    
    private let article: [AppContentItem] = [
        AppContentItem(
            title: "Сулакский каньон", subtitle: "Самый глубокий в мире",
            itemWidth: 333 // TODO: костыль убрать
            //itemWidth: .infinity, maxWidth: .infinity
        )
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                Header()
                Spacer(minLength: 24)
                Feature()
                    .padding(.horizontal, 30)
                Spacer(minLength: 25)
                AppContent(
                    title: "Рекомендации",
                    items: recommendations
                )
                Spacer(minLength: 25)
                AppContent(
                    title: "Что взять с собой в Турцию ?",
                    items: article
                )
                Spacer(minLength: 25)
            }
        }
        .padding(.top, 1)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
