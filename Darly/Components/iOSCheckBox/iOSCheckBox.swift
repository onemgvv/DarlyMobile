//
//  iOSCheckBox.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct iOSCheckbox: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                configuration.label
                Spacer()
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
            }
            .foregroundColor(Color.appText)
        })
    }
}
