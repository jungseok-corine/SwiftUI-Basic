//
//  ListBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 8/7/2025.
//

import SwiftUI

struct ListBasic: View {
    
    @State var fruits: [String] = ["사과", "오렌지", "바나나", "수박"]
    @State var meats: [String] = ["소고기", "돼지고기", "닭고기"]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일 종류")
                        .foregroundColor(.brown)
                        .font(.headline)
                } //: Section
                Section {
                    ForEach(meats, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .listRowBackground(Color.green)
                } header: {
                    Text("고기 종류")
                        .foregroundColor(.red)
                        .font(.headline)
                }

            } //: List
            .navigationTitle("우리 동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        } //: Navigation
    } //: Body
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    var addButton: some View {
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }

    }
}

#Preview {
    ListBasic()
}
