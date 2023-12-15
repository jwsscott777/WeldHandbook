//
//  WeldTodoView.swift
//  WeldBook Watch App
//
//  Created by JWSScott777 on 12/14/23.
//

import SwiftUI
import SwiftData

struct WeldTodoView: View {
    @Environment(\.modelContext) var watchModel
       @Query(sort: \WatchNote.date) var watchNote: [WatchNote]
       @State private var inputText: String = ""
       var body: some View {
           NavigationStack {
               VStack {
                   HStack {
                       TextField("Input here", text: self.$inputText)
                           .foregroundStyle(.red)
                           .textFieldStyle(.automatic)
                       Button(action: {
                           let new = WatchNote(title: self.inputText, isLiked: false, date: Date())
                           self.watchModel.insert(new)
                           self.inputText = ""
                       }, label: {
                           Image(systemName: "plus")
                       })
                       .buttonStyle(.borderedProminent)
                       .tint(.green)
                   }
                   Form {
                       Section("Weld Reminders") {
                       ForEach(watchNote) { note in
                           HStack {
                               VStack {
                                   Text(note.title)
                                       .foregroundStyle(.green)
                                   HStack {
                                       Text(note.date, style: .date)
                                       Text(note.date, style: .time)
                                   }.font(.callout)
                                       .foregroundStyle(.secondary)
                               }
                               .swipeActions {
                                   Button(role: .destructive) {
                                        self.watchModel.delete(note)
                                   } label: {
                                       Text("Delete")
                                   }
                               }
                               Spacer()
                           }
                       }
                   }
                       .foregroundStyle(.orange)
                   }.navigationTitle("Weld Tracker")
               }
           }

       }
}

#Preview {
    WeldTodoView()
}


