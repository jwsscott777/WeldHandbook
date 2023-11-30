//
//  PositionListingView.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//
import SwiftData
import SwiftUI
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
                        /// Photo
                        if let selectedPhotoData = position.image, let uiImage = UIImage(data: selectedPhotoData) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, maxHeight: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        }
                    }
                }
            }
            .onDelete(perform: deletePositions)
        }
        .scrollIndicators(.hidden)
    }
    init(sort: [SortDescriptor<Position>], searchString: String, minimumDate: Date) {
        _positions = Query(filter: #Predicate {
            if searchString.isEmpty {
                return $0.date > minimumDate
            } else {
                return $0.date > minimumDate &&
                ($0.name.localizedStandardContains(searchString) || $0.goals.contains  { $0.name.localizedStandardContains(searchString) })
            }
        }, sort: sort)
    }
    func deletePositions(_ indexSet: IndexSet) {
        for index in indexSet {
            let position = positions[index]
            modelContext.delete(position)
        }
    }
}
#Preview {
    PositionListingView(sort: [SortDescriptor(\Position.name)], searchString: "", minimumDate: .distantPast)
}
