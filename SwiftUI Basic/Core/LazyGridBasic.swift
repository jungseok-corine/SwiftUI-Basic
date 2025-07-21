//
//  LazyGridBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 2/7/2025.
//

import SwiftUI

struct LazyGridBasic: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    let title: [String] = Array(1...1000).map { "목록\($0)" }
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header: Text("Section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } //: Section1
                
                Section(header: Text("Section2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index) 번")
                            )
                    }
                } //: Setion2
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: layout, spacing: 20) {
                    ForEach(title, id: \.self) { item in
                        VStack {
                            Capsule()
                                .fill(.yellow)
                                .frame(height: 30)
                            
                            Text(item)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LazyGridBasic()
}
