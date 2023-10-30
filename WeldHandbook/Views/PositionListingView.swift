//
//  PositionListingView.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//
import SwiftData
import SwiftUI
import TipKit

struct PositionListingView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: [SortDescriptor(\Position.priority, order: .reverse), SortDescriptor(\Position.name)]) var positions: [Position]
    var body: some View {
        List {
            ForEach(positions) { position in
                NavigationLink(value: position) {
                    VStack(alignment: .leading) {
                        Text(position.name)
                            .font(.headline)

                        Text(position.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .onDelete(perform: deletePositions)
        }
    }

    init(sort: SortDescriptor<Position>, searchString: String) {
        _positions = Query(filter: #Predicate {
            if searchString.isEmpty {
                return true
            } else {
                return $0.name.localizedStandardContains(searchString)
            }
        }, sort: [sort])
    }

    func deletePositions(_ indexSet: IndexSet) {
        for index in indexSet {
            let position = positions[index]
            modelContext.delete(position)
        }
    }
}

#Preview {
    PositionListingView(sort: SortDescriptor(\Position.name), searchString: "")
}
