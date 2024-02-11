//
//  41.DatePickerBoocamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Julian Mesa on 5/02/24.
//

import SwiftUI

struct _1_DatePickerBoocamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        VStack{
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //DatePicker("Select a Date", selection: $selectedDate)
            //DatePicker("Select a date", selection: $selectedDate,
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
        }
        
    }
}

#Preview {
    _1_DatePickerBoocamp()
}
