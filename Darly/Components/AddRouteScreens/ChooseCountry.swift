//
//  ChooseCountry.swift
//  Darly
//
//  Created by Magomed on 06.06.2023.
//

import SwiftUI

struct ChooseCountry: View {
    @State private var limitTextActive: Bool = false
    @AppStorage("selectedCountries") private var selectedCountries: [String] = []
    @AppStorage("printChooseCountryAlert") private var printChooseCountryAlert: Bool = false
    
    private var countries: [String] = [
        "Russia", "UAE", "Turkey",
        "Armani", "Georgy", "Uzebkistan",
        "Tajikistan", "Kazakhstan", "Saudi Arabia",
        "Azerbajan", "UAR", "Brazilia"
    ]
    
    private var flags: [String] = [
        "fRU", "fAE", "fTR",
        "fAM", "fGE", "fUZ",
        "fTJ", "fKZ", "fSA",
        "fAZ", "fZA", "fBR"
    ]
    
    private let columns = [
        GridItem(.adaptive(minimum: 115)),
        GridItem(.adaptive(minimum: 115)),
        GridItem(.adaptive(minimum: 115))
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(alignment: .leading) {
                    Text("Выберите")
                        .font(.custom("Poppins-SemiBold", size: 20))
                    HStack(spacing: 4) {
                        Text("предпочитаемые")
                            .font(.custom("Poppins-SemiBold", size: 20))
                        Text("страны")
                            .foregroundColor(Color.purpleBlue)
                            .font(.custom("Poppins-SemiBold", size: 20))
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            
            Spacer(minLength: 20)
            
            if limitTextActive {
                HStack() {
                    Text("Не больше трех стран")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.red)
                
                Spacer(minLength: 15)
            }
            
            if printChooseCountryAlert {
                HStack() {
                    Text("Выберите хотя бы одну страну")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.red)
                
                Spacer(minLength: 15)
            }
            
            LazyVGrid(columns: columns) {
                ForEach(Array(countries.enumerated()), id: \.offset) { index, country in
                    Button(action: {
                        if selectedCountries.contains(country) {
                            let itemIndex = selectedCountries.firstIndex(of: country)
                            selectedCountries.remove(at: itemIndex!)
                            
                            if limitTextActive {
                                limitTextActive = false
                            }
                        } else {
                            if selectedCountries.count < 3 {
                                selectedCountries.append(country)
                                
                                if printChooseCountryAlert {
                                    printChooseCountryAlert = false
                                }
                            } else {
                                limitTextActive = true
                            }
                        }
                    }) {
                        Image(flags[index])
                            .frame(width: 115, height: 86)
                            .background(selectedCountries.count > 0 && selectedCountries.contains(country) ? Color.purpleBlue : Color.tabBarBackground)
                            .cornerRadius(15)
                    }
                    .buttonStyle(PressedButtonStyle())
                }
            }
            .padding(.horizontal, 30)
            Spacer()
        }
    }
}

struct ChooseCountry_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCountry()
    }
}
