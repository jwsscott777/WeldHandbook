//
//  EditPositionView.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//
import SwiftData
import SwiftUI
import TipKit

struct EditPositionView: View {
    @Bindable var position: Position
    @State private var newGoalName = ""
    let addAttemptsTip = AddAttemptsTip()
   
    var body: some View {
        Form {
            TextField("Name of weld position", text: $position.name)
            TextField("Details, electrodes used, etc...", text: $position.details, axis: .vertical)
            DatePicker("Date", selection: $position.date)

            Section("Attempts") {
                Picker("Priority", selection: $position.priority) {
                    Text("First").tag(1)
                    Text("Second").tag(2)
                    Text("Third").tag(3)
                    Text("Fourth").tag(4)
                }
                .pickerStyle(.segmented)
            }
            Section("Passed Welded Attempts") {
                ForEach(position.goals) { goal in
                    Text(goal.name)
                }
                HStack {
                    TextField("Add a passed attempt in \(position.name)", text: $newGoalName)
                    Button(action: {
                        addGoal()
                    }, label: {
                        Text("Add")
                    })
                    .popoverTip(addAttemptsTip, arrowEdge: .bottom)
                 //   Button("Add", action: addGoal)
                }
            }
        }
        .navigationTitle("Edit Weld Position")
        .navigationBarTitleDisplayMode(.large)
    }

    func addGoal() {
        guard newGoalName.isEmpty == false  else { return }

        withAnimation {
            let goal = Goal(name: newGoalName)
            position.goals.append(goal)
            newGoalName = ""
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Position.self, configurations: config)
        let example = Position(name: "Example Position", details: "Positions of either Groove or Fillet welds should go here.")
            return EditPositionView(position: example)
            .modelContainer(container)
    } catch {
        fatalError("Failed to load")
    }
}
