//
//  Logo.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct Logo: View {
    @State var isHome: Bool
    @State var isProfile: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if isHome {
                Text("Привет,")
                    .font(.custom("MavenPro-SemiBold", size: 20))
                Text("onemgvv")
                    .font(.custom("MavenPro-SemiBold", size: 22))
                    .foregroundColor(.purpleBlue)
            } else if !isProfile && !isHome  {
                Text("Darly")
                    .font(.custom("MavenPro-SemiBold", size: 28))
            }
            
        }
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo(isHome: false, isProfile: true)
    }
}
