//
//  HistoryView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack{
            Header(isHome: false)
        }
        .padding(.top, 1)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
