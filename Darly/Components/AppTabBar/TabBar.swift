//
//  TabBar.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct TabBar: View {
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("addRoutePage") private var addRoutePage: Int = 0
    
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        .padding(6)
        .background(Color.tabBarBackground.ignoresSafeArea(edges: .bottom))
    }
}

struct TabBar_Previews: PreviewProvider {
    static let tabs: [TabBarItem] = [.home, .search, .add, .history, .profile]
    
    static var previews: some View {
        VStack {
            Spacer()
            TabBar(tabs: tabs, selection: .constant(tabs.first!))
        }.background(Color.appBackground)
    }
}

extension TabBar {
    private func tabView(tab: TabBarItem) -> some View {
        @State var colorMode: String = colorScheme == .dark ? "l" : "c"
        
        return VStack {
            if tab.iconName == "add_ring" {
                Image("add_ring")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .font(.subheadline)
            } else {
                Image(selection == tab ? colorMode+tab.iconName : tab.iconName)
                    .font(.subheadline)
                Text(tab.title)
                    .font(.custom("Poppins-Medium", size: 12))
            }
        }
        .foregroundColor(selection == tab ? .mainColor : .lightGrayText)
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity)
        .background(selection == tab && tab.iconName == "add_ring" ? .lightMainColor : tab.background)
        .cornerRadius(50)
        .clipShape(Circle())
    }
    
    private func switchToTab(tab: TabBarItem) {
        withAnimation(.easeInOut) {
            if tab == .add {
                addRoutePage = 0
            }
            selection = tab
        }
    }
}
