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
    @State private var sortOrder = SortDescriptor(\Position.name)
    @State private var path = [Position]()
    @State private var searchText = ""
    let createToDoTip = CreateToDoTip()
    var body: some View {
        NavigationStack(path: $path) {
            PositionListingView(sort: sortOrder, searchString: searchText)
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
                                    .tag(SortDescriptor(\Position.name))
                                Text("Priority")
                                    .tag(SortDescriptor(\Position.priority, order: .reverse))
                                Text("Date")
                                    .tag(SortDescriptor(\Position.date))
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
