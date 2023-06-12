//
//  AddRouteView.swift
//  Darly
//
//  Created by Magomed on 03.06.2023.
//

import SwiftUI

struct AddRouteView: View {
    @AppStorage("addRoutePage") private var addRoutePage: Int = 0

    var body: some View {
        VStack {
            Header(isHome: false)
            GetPage(currentPage: addRoutePage)
        }
        .safeAreaInset(edge: VerticalEdge.bottom) {
            SlideButtons()
            if addRoutePage == 3 {
                Text("Загрузка...")
                    .padding(.horizontal, 32)
                    .padding(.vertical, 16)
                    .foregroundColor(Color.white)
                    .background(Color.darkPurple)
                    .cornerRadius(40)
            }
        }
        .padding(.top, 1)
        .padding(.bottom, 20)
    }
    
    @ViewBuilder
    private func GetPage(currentPage: Int) -> some View {
        switch currentPage {
        case 0:
            ChooseCountry()
        case 1:
            ChoosePrefers()
        case 2:
            ChooseFinalParams()
        case 3:
            GenerateRoute()
        case 4:
            GeneratedRoutes()
        default:
            ChooseCountry()
        }
    }
}

struct AddRouteView_Previews: PreviewProvider {
    static var previews: some View {
        AddRouteView()
    }
}

struct SlideButtons: View {
    @AppStorage("addRoutePage") private var addRoutePage: Int = 0
    
    @AppStorage("printChooseCountryAlert") private var printChooseCountryAlert: Bool = false
    @AppStorage("printChoosePreferAlert") private var printChoosePreferAlert: Bool = false
    @AppStorage("printChooseFinalParams") private var printChooseFinalParams: Bool = false
    
    @AppStorage("selectedCountries") private var selectedCountries: [String] = []
    @AppStorage("selectedPrefers") private var selectedPrefers: [String] = []
    
    @AppStorage("tourPeopleCount") var tourPeopleCount: String = "1"
    @AppStorage("tourDaysCount") var tourDaysCount: String = "1"
    
    private var buttonText: [String] = [
        "Далее", "Далее", "Проложить маршрут"
    ]
    
    func nextPage() -> Void {
        if addRoutePage == 0 && selectedCountries.count == 0 {
            printChooseCountryAlert = true
            return
        }
        
        if addRoutePage == 1 && selectedPrefers.count == 0 {
            printChoosePreferAlert = true
            return
        }
        
        if addRoutePage == 2 && (tourPeopleCount == "0" || tourDaysCount == "0") {
            printChooseFinalParams = true
            return
        }
        
        if addRoutePage < 3 {
            addRoutePage += 1
        }
    }
    
    var body: some View {
        if addRoutePage < 3 {
            Button(action: {
                nextPage()
            }, label: {
                HStack(alignment: .center) {
                    Spacer()
                    Text(buttonText[addRoutePage])
                        .font(.custom("MavenPro-SemiBold", size: 20))
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.system(size: 20))
                        .padding(.trailing, 15)
                }
                .padding(.vertical, 18)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color.purpleBlue))
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .strokeBorder(Color.clear, lineWidth: 0)
                )
            })
            .buttonStyle(PressedButtonStyle())
            .padding(.vertical, 0)
            .padding(.horizontal, 30)
        }
    }
}
