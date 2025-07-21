//
//  BindingBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 4/7/2025.
//

import SwiftUI

struct BindingBasic: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
