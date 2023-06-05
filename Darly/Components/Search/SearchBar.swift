//
//  SearchBar.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText: String = ""
    
    var body: some View {
        HStack {
            TextField("Поиск туров...", text: $searchText)
                .foregroundColor(Color.appText)
                .font(.custom("Poppins-Regular", size: 14))
            Button(action: {}) {
                Image("search")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.tabBarBackground)
        )
        .padding(.horizontal, 30)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
