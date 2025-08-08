//
//  DarkModeBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 7/8/2025.
//

import SwiftUI

struct DarkModeBasic: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    Text("Black 색상")
                        .foregroundColor(.black)
                    Text("White 색상")
                        .foregroundColor(.white)
                    Text("Red 색상")
                        .foregroundColor(.red)
                    Text("AdaptiveColor 색상")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("@Environment 색상")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                } //: VStack
            } //: ScrollView
        } //: NavigationView
    }
}

#Preview {
    DarkModeBasic()
}
