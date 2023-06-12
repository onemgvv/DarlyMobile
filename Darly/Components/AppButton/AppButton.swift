//
//  ButtonView.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import SwiftUI

struct PressedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct AppButton: View {
    @State var stroke: Color = Color.clear
    @State var strokeWidth: CGFloat = 0
    @State var background: Color = Color.blue
    @State var color: Color = Color.white
    @State var title: String = "Press me"
    @State var titleSize: CGFloat = 16
    @State var titleFont: String = "MavenPro-Medium"
    @State var height: CGFloat = 50
    @State var cornerRadius: CGFloat = 50
    @State var verticalPadding: CGFloat = 0
    @State var horizontalPadding: CGFloat = 0
    @State var action: () -> Void = {}
    
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(title)
                .font(.custom(titleFont, size: titleSize))
                .frame(height: height)
                .frame(maxWidth: .infinity)
                .foregroundColor(color)
                .background(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).fill(background))
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .strokeBorder(stroke, lineWidth: strokeWidth)
                )
        })
        .buttonStyle(PressedButtonStyle())
        .padding(.vertical, verticalPadding)
        .padding(.horizontal, horizontalPadding)
    }
}

struct AppButton_Previews: PreviewProvider {
    static var previews: some View {
        AppButton(action: {})
    }
}
