//
//  ProfileCard.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import SwiftUI
import UniformTypeIdentifiers

struct ProfileCard: View {
    @State var username: String = "Muhammad Gasanov"
    @State var nickname: String = "@onemgvv"
    
    @State private var showingSheet = false
    @State private var alertPrinted = false
    
    var body: some View {
        VStack (spacing: 16) {
            VStack(spacing: 10) {
                VStack {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 102, height: 102)
                        .cornerRadius(50)
                        .scaledToFill()
                }
                .overlay(
                    Circle()
                        .stroke(Color("purpleBlue"), lineWidth: 2.3)
                        .frame(width: 120, height: 120)
                )
                .padding(.vertical, 10)
                .padding(.horizontal, 10)
                VStack (spacing: 2) {
                    Text(username)
                        .foregroundColor(Color.appText)
                        .font(.custom("MavenPro-SemiBold", size: 18))
                    Text(nickname)
                        .foregroundColor(Color.purpleBlue)
                        .font(.custom("MavenPro-SemiBold", size: 16))
                        .onTapGesture(count: 2) {
                            alertPrinted.toggle()
                            UIPasteboard.general.setValue(nickname,
                                 forPasteboardType: UTType.plainText.identifier)
                        }
                }
            }.alert(isPresented: $alertPrinted) {
                Alert(
                    title: Text("никнейм скопирован!"),
                    dismissButton: .cancel(Text("OK"))
                )
            }
            
            AppButton(
                background: Color.purpleBlue,
                title: "Редактировать",
                titleSize: 14,
                titleFont: "MavenPro-SemiBold",
                height: 40,
                cornerRadius: 10,
                action: {
                    showingSheet.toggle()
                }
            )
            .sheet(isPresented: $showingSheet) {
                EditSheet()
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
        .frame(maxWidth: .infinity)
        .background(Color.tabBarBackground)
        .cornerRadius(15)
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
