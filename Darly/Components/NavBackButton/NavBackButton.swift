//
//  NavBackButton.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct NavBackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            HStack{
                Image(systemName: "chevron.left")
                Text("Назад")
            }
        })
    }
}

struct NavBackButton_Previews: PreviewProvider {
    static var previews: some View {
        NavBackButton()
    }
}
