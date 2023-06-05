//
//  AppContentItem.swift
//  Darly
//
//  Created by Magomed on 04.06.2023.
//

import Foundation
import SwiftUI

struct AppContentItem: Hashable {
    var title: String = "Удивительное место"
    var subtitle: String = "Удивительное место"
    var itemWidth: CGFloat = 150
    var itemHeight: CGFloat = 150
    var cornerRadius: CGFloat = 10
    var maxWidth: CGFloat?
}
