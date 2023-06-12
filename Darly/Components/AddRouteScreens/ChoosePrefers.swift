//
//  ChoosePrefers.swift
//  Darly
//
//  Created by Magomed on 06.06.2023.
//

import SwiftUI

struct ChoosePrefers: View {
    @State private var limitTextActive: Bool = false
    @AppStorage("printChoosePreferAlert") private var printChoosePreferAlert: Bool = false
    @AppStorage("selectedPrefers") private var selectedPrefers: [String] = []
    @State private var localPrefers: [String] = []
    
    var data = [
        "Дайвинг", "Море", "Горы", "Зима",
        "Леса", "Осень", "Весна", "Лето",
        "Пляж", "Лыжи", "Гастротур",
        "Автотур", "Золотое кольцо",
        "Водопады", "Пустыня", "Кремль"
    ]
    
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("Выберите ваши")
                        .font(.custom("Poppins-SemiBold", size: 20))
                    Text("предпочтения")
                        .foregroundColor(Color.purpleBlue)
                        .font(.custom("Poppins-SemiBold", size: 20))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            
            Spacer(minLength: 20)
            
            if limitTextActive {
                HStack() {
                    Text("Не больше пяти предпочтений")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.red)
                
                Spacer(minLength: 15)
            }
            
            if printChoosePreferAlert {
                HStack() {
                    Text("Выберите хотя бы одно предпочтение")
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.red)
                
                Spacer(minLength: 15)
            }
            
            GeometryReader { geometryProxy in
                FlexibleView(
                    availableWidth: geometryProxy.size.width, data: data,
                    spacing: 15,
                    alignment: .leading
                  ) { item in
                      Button(action: {
                          if selectedPrefers.contains(item) {
                              let itemIndex = selectedPrefers.firstIndex(of: item)
                              selectedPrefers.remove(at: itemIndex!)
                              localPrefers.remove(at: itemIndex!)
                              
                              if limitTextActive {
                                  limitTextActive = false
                              }
                          } else {
                              if selectedPrefers.count < 5 {
                                  selectedPrefers.append(item)
                                  localPrefers.append(item)
                           
                                  if printChoosePreferAlert {
                                      printChoosePreferAlert = false
                                  }
                              } else {
                                  limitTextActive = true
                              }
                          }
                      }) {
                          Text(item)
                            .foregroundColor(selectedPrefers.count > 0 && selectedPrefers.contains(item) ? Color.white : Color.appText)
                            .padding(8)
                            .background(
                              RoundedRectangle(cornerRadius: 8)
                                .fill(selectedPrefers.count > 0 && selectedPrefers.contains(item) ? Color.purpleBlue : Color.tabBarBackground)
                             )
                      }
                      .buttonStyle(PressedButtonStyle())
                  }
//                  .padding(.horizontal, 30)
            }
            .padding(.horizontal, 30)
            Spacer()
        }
    }
}

struct ChoosePrefers_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePrefers()
    }
}

struct FlexibleView<Data: Collection, Content: View>: View where Data.Element: Hashable {
    let availableWidth: CGFloat
    let data: Data
    let spacing: CGFloat
    let alignment: HorizontalAlignment
    let content: (Data.Element) -> Content
    @State var elementsSize: [Data.Element: CGSize] = [:]

    var body : some View {
        VStack(alignment: alignment, spacing: spacing) {
            ForEach(computeRows(), id: \.self) { rowElements in
                HStack(spacing: spacing) {
                    ForEach(rowElements, id: \.self) { element in
                    content(element)
                            .fixedSize()
                            .readSize { size in
                                elementsSize[element] = size
                            }
                    }
                }
            }
        }
    }

    func computeRows() -> [[Data.Element]] {
        var rows: [[Data.Element]] = [[]]
        var currentRow = 0
        var remainingWidth = availableWidth

        for element in data {
          let elementSize = elementsSize[element, default: CGSize(width: availableWidth, height: 1)]

          if remainingWidth - (elementSize.width + spacing) >= 0 {
            rows[currentRow].append(element)
          } else {
            currentRow = currentRow + 1
            rows.append([element])
            remainingWidth = availableWidth
          }

          remainingWidth = remainingWidth - (elementSize.width + spacing)
        }

        return rows
    }
}

extension View {
    func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
        background(
          GeometryReader { geometryProxy in
            Color.clear
              .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
          }
        )
        .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
    }
}

private struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
