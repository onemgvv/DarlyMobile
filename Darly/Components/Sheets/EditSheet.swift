//
//  EditSheet.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct EditSheet: View {
    @State private var username: String = "@onemgvv"
    
    var body: some View {
        VStack {
            Text("Редактировать")
                .font(.custom("MavenPro-Medium", size: 18))
            Spacer()
            
            TextField("Поиск туров...", text: $username)
                .foregroundColor(Color.appText)
                .font(.custom("Poppins-Regular", size: 14))
        }
    }
}

struct EditSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditSheet()
    }
}
