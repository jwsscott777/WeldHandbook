//
//  EditPositionView.swift
//  weldTour
//
//  Created by JWSScott777 on 10/15/23.
//
import SwiftData
import SwiftUI
import PhotosUI
import TipKit
struct EditPositionView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var position: Position
    @State private var newGoalName = ""

    var sortedGoals: [Goal] {
        position.goals.sorted {
            $0.name < $1.name
        }
    }
    /// Photo stuff
    @State private var selectedPhoto: PhotosPickerItem?
    @State private var isImageViewPresented = false
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
                ForEach(sortedGoals) { goal in
                    Text(goal.name)
                }
                .onDelete(perform: deleteGoals)
                HStack {
                    TextField("Add a passed attempt in \(position.name)", text: $newGoalName)
                    Button(action: {
                        addGoal()
                    }, label: {
                        Text("Add")
                    })
                    .popoverTip(addAttemptsTip, arrowEdge: .bottom)
                }
            }
            /// Photo stuff
            Section {
                if let imageData = position.image, let uiImage = UIImage(data: imageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .onTapGesture {
                            isImageViewPresented = true
                        }
                        .fullScreenCover(isPresented: $isImageViewPresented, content: {
                            SwiftUIImageViewer(image: Image(uiImage: uiImage))
                                .overlay(alignment: .topTrailing) {
                                    Button {
                                                isImageViewPresented = false
                                            } label: {
                                                Image(systemName: "xmark")
                                                    .font(.headline)
                                            }
                                            .buttonStyle(.bordered)
                                            .clipShape(Circle())
                                            .tint(.purple)
                                            .padding()
                                }
                        })
                }
                PhotosPicker(selection: $selectedPhoto, matching: .images, photoLibrary: .shared()) {
                    Label("Add Passed Image", systemImage: "photo")
                }

                if position.image != nil {
                    Button(role: .destructive) {
                        withAnimation {
                            selectedPhoto = nil
                            position.image = nil
                        }
                    } label: {
                        Label("Remove Image", systemImage: "xmark")
                            .foregroundStyle(.red)
                    }
                }
            } /// Photo stuff
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Edit Weld Position")
        .navigationBarTitleDisplayMode(.large)
        .task(id: selectedPhoto) {
            if let data = try? await selectedPhoto?.loadTransferable(type: Data.self) {
                position.image = data
            }
        }
    }
    func addGoal() {
        guard newGoalName.isEmpty == false  else { return }

        withAnimation {
            let goal = Goal(name: newGoalName)
            position.goals.append(goal)
            newGoalName = ""
        }
    }
    func deleteGoals(_ indexSet: IndexSet) {
        for index in indexSet {
            let goal = sortedGoals[index]
            modelContext.delete(goal)
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
