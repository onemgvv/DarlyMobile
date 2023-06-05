//
//  AppContentItemContainer.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import SwiftUI

struct AppContent: View {
    @State private var goToRoute = false
    @State private var goToAllRoutes = false
    @State var title: String = "Заголовок"
    @State var itemWeight: CGFloat = 150
    @State var itemHeight: CGFloat = 150
    @State var cornerRadius: CGFloat = 10
    @State var itemsCount: Int = 5
    @State var items: [AppContentItem] = []
    
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationLink(destination: RouteList(title: title), isActive: $goToAllRoutes) {  EmptyView() }
        VStack {
            HStack {
                Text(title)
                    .font(.custom("MavenPro-SemiBold", size: 16))
                    .foregroundColor(Color.appText)
                Spacer()
                Button(action: {
                    goToAllRoutes.toggle()
                }, label: {
                    Text("все")
                        .foregroundColor(.purpleBlue)
                        .font(.custom("MavenPro-Medium", size: 12))
                })
                .buttonStyle(PressedButtonStyle())
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    LazyHGrid(rows: rows) {
                        ForEach(items, id: \.self) { item in
                            NavigationLink(destination: RouteView(title: item.title), isActive: $goToRoute) {
                                appContentView(appContentItem: item, action: {
                                    goToRoute.toggle()
                                })
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 30)
    }
}

struct AppContent_Previews: PreviewProvider {
    static var previews: some View {
        AppContent()
    }
}

extension AppContent {
    private func appContentView(appContentItem: AppContentItem, action: @escaping () -> Void = {}) -> some View {
        return Button(action: {
                action()
            }, label: {
                VStack(alignment: .leading) {
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            Text(appContentItem.title)
                                .foregroundColor(Color.appText)
                                .font(.custom("Poppins-SemiBold", size: 14))
                                .lineLimit(1)
                            Text(appContentItem.subtitle)
                                .foregroundColor(Color.appText)
                                .font(.custom("Poppins-Regular", size: 12))
                                .lineLimit(1)
                        }
                        Spacer()
                    }
                }
                .padding(.leading, 15)
                .padding(.bottom, 10)
                .frame(width: appContentItem.itemWidth, height: appContentItem.itemHeight)
                .aspectRatio(contentMode: .fill)
                .background(Color.tabBarBackground)
                .cornerRadius(appContentItem.cornerRadius)
            })
            .buttonStyle(PressedButtonStyle())
        }
}
