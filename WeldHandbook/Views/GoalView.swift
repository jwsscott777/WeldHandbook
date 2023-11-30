//
//  GoalView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/21/23.
//

import SwiftUI
import SwiftData
import PhotosUI
import TipKit
struct GoalView: View {
    @Environment(\.modelContext) var modelContext
    @State private var sortOrder = [
        SortDescriptor(\Position.name),
        SortDescriptor(\Position.date)
         ]
    @State private var path = [Position]()
    @State private var searchText = ""
    @State private var minimumDate = Date.distantPast
    let currentDate = Date.now
    let createToDoTip = CreateToDoTip()
    var body: some View {
        NavigationStack(path: $path) {
            PositionListingView(sort: sortOrder, searchString: searchText, minimumDate: minimumDate)
                .navigationTitle("Weld Position Tracker")
                .navigationDestination(for: Position.self, destination: EditPositionView.init)
                .searchable(text: $searchText)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            addPosition()
                        }, label: {
                            Image(systemName: "plus")
                        })
                        .popoverTip(createToDoTip, arrowEdge: .top)
                    }
                    ToolbarItem {
                 //       TipView(sortActionTip)
                        Menu("Sort", systemImage: "arrow.up.arrow.down") {
                            Picker("Sort", selection: $sortOrder) {
                                Text("Name")
                                    .tag([
                                        SortDescriptor(\Position.name),
                                        SortDescriptor(\Position.date)
                                         ])
                                Text("Priority")
                                    .tag([
                                        SortDescriptor(\Position.priority, order: .reverse),
                                        SortDescriptor(\Position.name)
                                    ])
                                Text("Date")
                                    .tag([
                                        SortDescriptor(\Position.date),
                                        SortDescriptor(\Position.name)
                                    ])
                            }
                            .pickerStyle(.inline)

                            Picker("Filter", selection: $minimumDate) {
                                Text("Show all positions")
                                    .tag(Date.distantPast)

                                Text("Show upcoming positions")
                                    .tag(currentDate)
                            }
                            .pickerStyle(.inline)
                        }
                    }
                }
        }
    }
    func addPosition() {
        let position = Position()
        modelContext.insert(position)
        path = [position]
    }
}
#Preview {
    GoalView()
}
