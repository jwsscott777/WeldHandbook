//
//  NewTaskView.swift
//  Misc23
//
//  Created by JWSScott777 on 10/8/23.
//

import SwiftUI
struct NewTaskView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @State private var taskTitle: String = ""
    @State private var taskDate: Date = .init()
    @State private var taskColor: String = "TaskColor 1"
    let swipeActionTip: SwipeActionTip
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .tint(.red)
            })
            .hSpacing(.leading)
            VStack(alignment: .leading, spacing: 8) {
                Text("Event Title")
                    .font(.caption)
                    .foregroundStyle(.gray)
                TextField("Enter Event Here", text: $taskTitle)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 15)
                    .background(.tertiary.shadow(.drop(color: .black.opacity(0.25), radius: 2)), in: .rect(cornerRadius: 10))
            }
            .padding(.top, 5)
            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Event Date")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    DatePicker(String(""), selection: $taskDate)
                        .datePickerStyle(.compact)
                        .scaleEffect(0.9, anchor: .leading)
                }
                .padding(.trailing, -15)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Event Color")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    let colors: [String] = (1...5).compactMap { index -> String in
                        return "TaskColor \(index)"
                    }
                    HStack(spacing: 0) {
                        ForEach(colors, id: \.self) { color in
                            Circle()
                                .fill(Color(color))
                                .frame(width: 20, height: 20)
                                .hSpacing(.center)
                                .contentShape(.rect)
                                .onTapGesture {
                                    withAnimation(.snappy) {
                                        taskColor = color
                                    }
                                }
                        }
                    }
                }
            }
            .padding(.top, 5)
            Spacer(minLength: 0)
            Button(action: {
                /// Save
                let task = TaskModel(taskTitle: taskTitle, creationDate: taskDate, tint: taskColor)
                do {
                    context.insert(task)
                    try context.save()
                    dismiss()
                } catch {
                    print(error.localizedDescription)
                }
                    Task {
                await SwipeActionTip.pressActionEvent.donate()
            }
            }, label: {
                Text("Create Event")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .textScale(.secondary)
                    .foregroundStyle(.white)
                    .hSpacing(.center)
                    .padding(.vertical, 12)
                    .background(Color(taskColor), in: .rect(cornerRadius: 10))
            })
            .disabled(taskTitle == String(""))
            .opacity(taskTitle == String("") ? 0.5 : 1)
        }
        .padding(15)
    }
}
#Preview {
    NewTaskView(swipeActionTip: SwipeActionTip())
        .vSpacing(.bottom)
}
