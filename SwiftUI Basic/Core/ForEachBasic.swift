//
//  ForEachBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct ForEachBasic: View {
    
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack() {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("인덱스 번호 : \(index)")
                }
            }
            
            Divider()
            
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    ForEachBasic()
}
