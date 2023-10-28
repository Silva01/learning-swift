//
//  SelectorColor.swift
//  appleTeste
//
//  Created by Daniel Silva on 28/10/23.
//

import Foundation
import SwiftUI

class SelectorColor {
    
    private var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    func getColorRandom() -> Color {
        return self.colors.randomElement() ?? .blue
    }
}
