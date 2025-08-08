//
//  DatePickerBasic.swift
//  SwiftUI Basic
//
//  Created by 오정석 on 6/8/2025.
//

import SwiftUI

struct DatePickerBasic: View {
    @State var selectedDate1: Date = Date()
    @State var selectedDate2: Date = Date()
    @State var selectedDate3: Date = Date()
    @State var selectedDate4: Date = Date()
    @State var selectedDate5: Date = Date()

    var currentDate: String {
        let current = Date()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr")
//        formatter.timeZone = TimeZone(abbreviation: "KST")
        
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: current)
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                Text("현재시간: \(currentDate)")
                
                Divider()
                
                VStack {
                    DatePicker("기본 DatePicker", selection: $selectedDate1)
                        .accentColor(.red)
                        .datePickerStyle(.automatic)
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate1))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("달력", selection: $selectedDate2)
                        .datePickerStyle(.graphical)
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate2))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("휠", selection: $selectedDate3)
                        .datePickerStyle(.wheel)
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate3))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: [.date])
                    Text("선택된 날짜는 \(dateToKR(selectedDate: selectedDate4))")
                }
            }
        } //: Scrollview
    }
    
    func dateToKR(selectedDate: Date) -> String {
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr")
        
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: selectedDate)
    }
}

#Preview {
    DatePickerBasic()
}
