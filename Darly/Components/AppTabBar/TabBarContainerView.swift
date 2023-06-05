//
//  TabBarContainerView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct TabBarContainerView<Content: View>: View {
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                content
            }
            TabBar(tabs: tabs, selection: $selection)
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}


struct TabBarContainerView_Previews: PreviewProvider {
    static let tabs: [TabBarItem] = [.home, .search, .add, .history, .profile]
    
    static var previews: some View {
        TabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
