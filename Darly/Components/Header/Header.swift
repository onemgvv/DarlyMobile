//
//  Header.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct Header: View {
    @State var isHome = true
    @State var isProfile = false
    
    var body: some View {
        HStack {
            Logo(isHome: isHome, isProfile: isProfile)
            Spacer()
            HStack(spacing: 15) {
                if isProfile {
                    BallsButton()
                } else {
                    BellsButton()
                }
            }
        }
        .frame(minHeight: 50)
        .padding(.vertical, 10)
        .padding(.horizontal, 30)
        Spacer()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
