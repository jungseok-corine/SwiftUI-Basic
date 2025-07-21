//
//  InitEnumBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct InitEnumBasic: View {
    
    let backGroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
        
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "사과"
            self.backGroundColor = .red
        } else {
            self.title = "오렌지"
            self.backGroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backGroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 46, fruit: .orange)
    }
}
