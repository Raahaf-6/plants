import SwiftUI

struct SetReminder: View {
    @State private var taskName: String = ""
    @State private var selectedRoom: String = "Select Room"
    @State private var selectedLight: String = "Select Light"
    @State private var selectWateringDays: String = "Select Water Days"
    @State private var selectwater: String = "Select Water"
    @Environment(\.dismiss) var dismiss
    
    let rooms = ["Living Room", "Bedroom", "Kitchen", "Bathroom", "Balcony"] // Example room options
    let lights = ["Full Sun", "Partial Sun", "Low Light"] // Example light options
    
    
    let WateringDays = ["Every day", "Every 2 days", "Every 3 days", "Once a week", "Every 10 days", "Every 2 weeks"] // Example room options
    let Water = ["20-50 ml", "50-100 ml", "100-200 ml", "200-300 ml"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Text Field for Plant Name
                    TextField("Plant Name", text: $taskName)
                        .padding()
                        .frame(width: 388, height: 58)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.white)

                    // Combined List for Room and Light
                    VStack{
                        // Picker for Room
                        HStack {
                            Image(systemName: "location")
                                .foregroundColor(.gray) // Icon color
                            Text("Room")
                                .foregroundColor(.white) // Text color
                            Spacer()
                            Picker(selection: $selectedRoom, label: Text(selectedRoom).foregroundColor(.gray)) {
                                ForEach(rooms, id: \.self) { room in
                                    Text(room).tag(room)
                                }
                            }
                            .accentColor(.gray)
                            .pickerStyle(MenuPickerStyle()) // Dropdown style
                            .frame(width: 120) // Set width for the picker
                            .foregroundColor(.white)
                           
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        
                        // Picker for Light
                        HStack {
                            Image(systemName: "sun.max")
                                .foregroundColor(.gray) // Icon color
                            Text("Light")
                                .foregroundColor(.white) // Text color
                            Spacer()
                            Picker(selection: $selectedLight, label: Text(selectedLight).foregroundColor(.gray)) {
                                ForEach(lights, id: \.self) { light in
                                    Text(light).tag(light)
                                }
                            }
                            .accentColor(.gray)
                            .pickerStyle(MenuPickerStyle()) // Dropdown style
                            .frame(width: 120) // Set width for the picker
                            .foregroundColor(.white)
                            
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                    
                    .frame(width: 388) // Set width for the entire list
                    .padding(.top, 10) // Add some top padding

                    
                    VStack{
                        // Picker for Room
                        HStack {
                            Image(systemName: "drop")
                                .foregroundColor(.gray) // Icon color
                            Text("Watering Days")
                                .foregroundColor(.white) // Text color
                            Spacer()
                            Picker(selection: $selectWateringDays, label: Text(selectWateringDays).foregroundColor(.gray)) {
                                ForEach(WateringDays, id: \.self) { room in
                                    Text(room).tag(room)
                                }
                            }
                            .accentColor(.gray)
                            .pickerStyle(MenuPickerStyle()) // Dropdown style
                            .frame(width: 120) // Set width for the picker
                            .foregroundColor(.white)
                           
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        
                        // Picker for Light
                        HStack {
                            Image(systemName: "drop")
                                .foregroundColor(.gray) // Icon color
                            Text("Water")
                                .foregroundColor(.white) // Text color
                            Spacer()
                            Picker(selection: $selectwater, label: Text(selectwater).foregroundColor(.gray)) {
                                ForEach(Water, id: \.self) { light in
                                    Text(light).tag(light)
                                }
                            }
                            .accentColor(.gray)
                            .pickerStyle(MenuPickerStyle()) // Dropdown style
                            .frame(width: 120) // Set width for the picker
                            .foregroundColor(.white)
                            
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                  
                    
                    
                    
                    
                Spacer() // Pushes content to the top
                }
                .padding()
            }
            .navigationTitle("Set Reminder")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button("Cancel") {
                    dismiss()
                }
                .foregroundColor(Color(red: 41/255, green: 223/255, blue: 168/255)),
                trailing: Button("Save") {
                    // Perform save action here
                    dismiss()
                }
                .foregroundColor(Color(red: 41/255, green: 223/255, blue: 168/255))
            )
        }
    }
}

#Preview {
    SetReminder()
}
