//
//  TaskRowView.swift
//  Misc23
//
//  Created by JWSScott777 on 10/8/23.
//

import SwiftUI
struct TaskRowView: View {
    @Bindable var task: TaskModel
    @Environment(\.modelContext) private var context
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Circle()
                .fill(indicatorColor)
                .frame(width: 10, height: 10)
                .padding(4)
                .background(.white.shadow(.drop(color: .black.opacity(0.1), radius: 3)), in: .circle)
                .overlay {
                    Circle()
                        .foregroundStyle(.clear)
                        .contentShape(.circle)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                task.isCompleted.toggle()
                            }
                        }
                }
            VStack(alignment: .leading, spacing: 8) {
                Text(task.taskTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)

                Label(task.creationDate.format("hh:mm a"), systemImage: "clock")
                    .font(.caption)
                    .foregroundStyle(.white)
            }
            .padding(15)
            .hSpacing(.leading)
            .background(task.tintColor, in: .rect(topLeadingRadius: 15, bottomLeadingRadius: 15 ))
            .strikethrough(task.isCompleted, pattern: .solid, color: .black)
            .contentShape(.contextMenuPreview, .rect(cornerRadius: 15 ))
            .contextMenu {
                Button(role: .destructive) {
                    context.delete(task)
                    try? context.save()
                } label: {
                    Text("Delete Event")
                }
            }
            .offset(x: -8)
        }
    }
    var indicatorColor: Color {
        if task.isCompleted {
            return .green
        }
        return task.creationDate.isSameHour ? .darkBlue : (task.creationDate.isPast ? .red : .black)
    }
}
#Preview {
    ContentView()
}
