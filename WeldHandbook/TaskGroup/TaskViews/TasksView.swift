//
//  TasksView.swift
//  Misc23
//
//  Created by JWSScott777 on 10/10/23.
//

import SwiftUI
import SwiftData

struct TasksView: View {
    @Binding var currentDate: Date
    @Query private var tasks: [TaskModel]
    init(currentDate: Binding<Date>) {
        self._currentDate = currentDate
        let calendar = Calendar.current
        let startOfDate = calendar.startOfDay(for: currentDate.wrappedValue)
        let endOfDate = calendar.date(byAdding: .day, value: 1, to: startOfDate)!
        let predicate = #Predicate<TaskModel> {
            return $0.creationDate >= startOfDate && $0.creationDate < endOfDate
        }
        let sortDescriptor = [
            SortDescriptor(\TaskModel.creationDate, order: .forward)
        ]
        self._tasks = Query(filter: predicate, sort: sortDescriptor, animation: .snappy)
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 35) {
            ForEach(tasks) { task in
                TaskRowView(task: task)
                    .background(alignment: .leading) {
                        if tasks.last?.id != task.id {
                            Rectangle()
                                .frame(width: 1)
                                .offset(x: 8)
                                .padding(.bottom, -35)
                        }
                    }
            }
        }
        .padding([.vertical, .leading], 15)
        .padding(.top, 15)
        .overlay {
            if tasks.isEmpty {
                Text("Nothing Here, click the bottom button to add a task")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .frame(width: 200)
            }
        }
    }
}

#Preview {
    ContentView()
}
