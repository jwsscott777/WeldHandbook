//
//  EditPositionView.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//
import SwiftData
import SwiftUI

struct EditPositionView: View {
    @Bindable var position: Position
    @State private var newGoalName = ""
    var body: some View {
        Form {
            TextField("Name", text: $position.name)
            TextField("Details", text: $position.details, axis: .vertical)
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
            Section("New Welding Positions") {
                ForEach(position.goals) { goal in
                    Text(goal.name)
                }
                HStack {
                    TextField("Add a new position in \(position.name)", text: $newGoalName)
                    Button("Add", action: addGoal)
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
