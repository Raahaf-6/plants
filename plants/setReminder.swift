import SwiftUI

struct SetReminder: View {
    @ObservedObject var reminderModel = PlantReminderModel()
    @Environment(\.dismiss) var dismiss
    @State private var taskName: String = ""
    @State private var selectedRoom: String = "Bedroom"
    @State private var selectedLight: String = "Full Sun"
    @State private var selectedWateringDays: String = "Every day"
    @State private var selectedWater: String = "20-50 ml"
    
    var body: some View {
        NavigationView {
            List {
                // Text Field for Plant Name
                Section {
                    HStack {
                        Text("Plant Name")
                            .foregroundColor(.white)
                        TextField("Pothos", text: $taskName)
                            //.foregroundColor(Color(red: 102/255, green: 102/255, blue: 102/255))
                           // .padding(.trailing)
                            .frame(height: 30)
                    }
                    .padding(.vertical, 4)
                }

                // First Section: Room and Light
                Section {
                    PickerRow(icon: "location", title: "Room", selection: $selectedRoom, options: ["Living Room", "Bedroom", "Kitchen", "Bathroom", "Balcony"])
                    
                    PickerRow(icon: "sun.max", title: "Light", selection: $selectedLight, options: ["Full Sun", "Partial Sun", "Low Light"])
                }

                // Second Section: Watering Days and Water
                Section {
                    PickerRow(icon: "drop", title: "Watering Days", selection: $selectedWateringDays, options: ["Every day", "Every 2 days", "Every 3 days", "Once a week", "Every 10 days", "Every 2 weeks"])
                    PickerRow(icon: "drop", title: "Water", selection: $selectedWater, options: ["20-50 ml", "50-100 ml", "100-200 ml", "200-300 ml"])
                }
            }
            .navigationTitle("Set Reminder")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button("Cancel") {
                    dismiss()
                }
                .foregroundColor(Color(red: 41/255, green: 223/255, blue: 168/255)),
                trailing: Button("Save") {
                    saveReminder()
                }
                .foregroundColor(Color(red: 41/255, green: 223/255, blue: 168/255))
            )
        }
    }

    private func saveReminder() {
        let newReminder = PlantReminder(
            name: taskName,
            room: selectedRoom,
            light: selectedLight,
            wateringDays: selectedWateringDays,
            waterAmount: selectedWater
        )
        reminderModel.addReminder(newReminder) // Save the new reminder
        dismiss() // Dismiss the view after saving
    }
}

struct PickerRow: View {
    var icon: String
    var title: String
    @Binding var selection: String
    var options: [String]

    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(title)
            Spacer()
            Picker(selection: $selection, label: Text("")) {
                ForEach(options, id: \.self) { option in
                    Text(option)
                        .foregroundColor(Color(red: 142/255, green: 142/255, blue: 147/255))
                        .tag(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .accentColor(.gray)
        }
    }
}

#Preview {
    SetReminder()
}

