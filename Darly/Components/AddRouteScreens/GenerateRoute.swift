//
//  GenerateRoute.swift
//  Darly
//
//  Created by Magomed on 06.06.2023.
//

import SwiftUI
import AVKit
import AVFoundation

struct GenerateRoute: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("addRoutePage") private var addRoutePage: Int = 0
    
    init() {
        changeRouteAfterTimeout(timeout: .now() + 10)
    }
    
    func changeRouteAfterTimeout(timeout: DispatchTime) {
        DispatchQueue.main.asyncAfter(deadline: timeout) {
            addRoutePage = 4
        }
    }
    
    var body: some View {
        VStack {
            if isDarkMode {
                DarkPlayer()
            } else {
                LightPlayer()
            }
        }
    }
}

struct GenerateRoute_Previews: PreviewProvider {
    static var previews: some View {
        GenerateRoute()
    }
}
