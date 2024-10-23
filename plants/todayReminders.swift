import SwiftUI

struct TodayReminders: View {
    @State private var completionStatus: [Bool] = [false, false] // Track completion for each plant
    @State private var plants = ["Pothos", "Pothos"] // List of plants

    var body: some View {
        NavigationView {
            VStack {
                // Navigation Title
                Text("My Plants 🌱")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)

                // Thin gray rectangle
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 1)
                    

                // Today label
                Text("Today")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 200, height: 100)
                    .padding(.trailing, 290)

                // Plant List
                List {
                    ForEach(plants.indices, id: \.self) { index in
                        HStack {
                            Image(systemName: completionStatus[index] ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(completionStatus[index] ? .green : .gray)
                                .onTapGesture {
                                    completionStatus[index].toggle() // Toggle completion status for the specific plant
                                }

                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "location")
                                        .foregroundColor(.gray)
                                    Text("in Bedroom")
                                        .foregroundColor(Color.gray)
                                }
                                
                                Text(plants[index])
                                    .font(.title) // Increased font size
                                HStack {
                                    HStack {
                                        Image(systemName: "sun.max")
                                            .foregroundColor(.yelloww)
                                        Text("Full sun")
                                            .foregroundColor(.yelloww)
                                    }
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(12)
                                    
                                    HStack {
                                        Image(systemName: "drop")
                                            .foregroundColor(.bluee)
                                        Text("20-50 ml")
                                            .foregroundColor(.bluee)
                                    }
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(12)
                                }
                            }
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                plants.remove(at: index) // Handle deletion here
                                completionStatus.remove(at: index) // Remove the corresponding completion status
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                        }
                       
                    }
                }
                .listStyle(PlainListStyle())

                Spacer() // Push the circular button to the bottom

                // HStack for Add Icon and Text
                HStack {
                    // Circular Add Icon
                    
                        
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.greeen) // Icon color
                            .font(.largeTitle)
                            .frame(width: .infinity,alignment: .bottom)
                            .controlSize(ControlSize.extraLarge)// Icon size
                    
                    .onTapGesture {
                        // Action to add a new reminder
                    }

                    Text("New Reminder")
                        .foregroundColor(.greeen) // Text color
    
                }
                .padding(.trailing, 145)
                .padding()
            }
            .padding()
        }
    }
}

struct TodayReminders_Previews: PreviewProvider {
    static var previews: some View {
        TodayReminders()
    }
}
