//
//  ChooseFinalParams.swift
//  Darly
//
//  Created by Magomed on 06.06.2023.
//

import SwiftUI

struct ChooseFinalParams: View {
    @AppStorage("tourPeopleCount") var tourPeopleCount: String = "1"
    @AppStorage("tourDaysCount") var tourDaysCount: String = "1"
    @AppStorage("tourPlaceCount") var tourPlaceCount: String = ""
    @AppStorage("printChooseFinalParams") private var printChooseFinalParams: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 4) {
                    Text("Ещё")
                        .foregroundColor(Color.purpleBlue)
                        .font(.custom("Poppins-SemiBold", size: 20))
                    Text("немного")
                        .font(.custom("Poppins-SemiBold", size: 20))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            
            Spacer(minLength: 20)
            
            if printChooseFinalParams {
                HStack() {
                    Text("Заполните обязательные параметры")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.red)
                
                Spacer(minLength: 15)
            }
            
            VStack(alignment: .center) {
                VStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Сколько человек будет ?*")
                        TextField("0", text: $tourPeopleCount)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 13)
                            .background(Color.appBackground)
                            .cornerRadius(15)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("На сколько дней ?*")
                        TextField("0", text: $tourDaysCount)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 13)
                            .background(Color.appBackground)
                            .cornerRadius(15)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Сколько точек желаете обойти ?")
                        TextField("0", text: $tourPlaceCount)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 13)
                            .background(Color.appBackground)
                            .cornerRadius(15)
                    }
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
            }
            .background(Color.tabBarBackground)
            .cornerRadius(25)
            .padding(.horizontal, 30)
            Spacer()
        }
    }
}

struct ChooseFinalParams_Previews: PreviewProvider {
    static var previews: some View {
        ChooseFinalParams()
    }
}
