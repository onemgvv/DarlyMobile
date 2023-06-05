//
//  AppTabBarView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct AppTabBarView: View {
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        TabBarContainerView(selection: $tabSelection) {
            HomeView()
                .tabBarItem(tab: .home, selection: $tabSelection)
            SearchView()
                .tabBarItem(tab: .search, selection: $tabSelection)
            AddRouteView()
                .tabBarItem(tab: .add, selection: $tabSelection)
            HistoryView()
                .tabBarItem(tab: .history, selection: $tabSelection)
            ProfileView()
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {    
    static var previews: some View {
        AppTabBarView()
    }
}
