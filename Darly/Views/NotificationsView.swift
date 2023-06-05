//
//  NotificationsView.swift
//  Darly
//
//  Created by Magomed on 05.06.2023.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Нет уведомлений")
                .font(.custom("Poppins-Medium", size: 18))
        }
        .navigationTitle("Уведомления")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: NavBackButton())
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
