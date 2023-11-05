//
//  ListView.swift
//  WeldHandbook
//
//  Created by JWSScott777 on 10/4/23.
//

import SwiftUI
import TipKit

struct ListView: View {
    @State private var selectedListItem: ListModel?
    @State private var show = false
    @State private var searchText = ""
    let glossaryTip = GlossaryTip()

    private var filteredLists: [ListModel] {
        if searchText.isEmpty {
            return lists
        } else {
            return lists.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    var body: some View {
        NavigationStack {
            TipView(glossaryTip, arrowEdge: .top)
            List(filteredLists) { item in
               ListItem(list: item)
                    .onTapGesture {
                        selectedListItem = item
                        show.toggle()
                    }
            }
            .sheet(isPresented: $show) {
                if let selectedItem = selectedListItem {
                    ListDetailView(list: selectedItem)
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Glossary of Terms")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    ListView()
}
