//
//  GeneratedRoutes.swift
//  Darly
//
//  Created by Magomed on 11.06.2023.
//

import SwiftUI

struct GeneratedRoute: Hashable {
    var title: String
    var subtitle: String
}

struct GeneratedRoutes: View {
    var data = [
        GeneratedRoute(title: "Сулакский каньон", subtitle: "Самый глубокий в мире"),
        GeneratedRoute(title: "Дербент", subtitle: "Древнейший город России"),
        GeneratedRoute(title: "Чиркейское водохранилище", subtitle: "Интересный факт"),
        GeneratedRoute(title: "Гамсутль", subtitle: "Интересный факт")
    ]
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(alignment: .leading) {
                    Text("Маршрут построен!")
                        .font(.custom("Poppins-SemiBold", size: 20))
                    Text("Желаю хорошего отдыха")
                        .foregroundColor(Color.purpleBlue)
                        .font(.custom("Poppins-SemiBold", size: 20))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            
            Spacer(minLength: 30)
            
            Group {
                ForEach(data, id: \.self) { item in
                    NavigationLink(destination: RouteView(title: item.title, subtitle: item.subtitle)) {
                        VStack(alignment: .leading) {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                        .foregroundColor(Color.appText)
                                        .font(.custom("Poppins-SemiBold", size: 14))
                                        .lineLimit(1)
                                    Text(item.subtitle)
                                        .foregroundColor(Color.appText)
                                        .font(.custom("Poppins-Regular", size: 12))
                                        .lineLimit(1)
                                }
                                Spacer()
                            }
                        }
                        .padding(.leading, 15)
                        .padding(.bottom, 10)
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .aspectRatio(contentMode: .fill)
                        .background(Color.tabBarBackground)
                        .cornerRadius(15)
                        .padding(.bottom, 15)
                    }
                    .buttonStyle(PressedButtonStyle())
                }
            }
            .padding(.horizontal, 30)
        }
    }
}

struct GeneratedRoutes_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedRoutes()
    }
}
