
import Foundation
import Combine

// Create the PlantReminderModel class
class PlantReminderModel: ObservableObject {
@Published var reminders: [PlantReminder] = [] // Array to hold reminders

// Method to add a new reminder
func addReminder(_ reminder: PlantReminder) {
    reminders.append(reminder) // Append the new reminder to the array
    // Optionally, implement logic to save to persistent storage here
}
}


//import SwiftUI
//import Combine
//
//
//class PlantReminderModel: ObservableObject {
//    @Published var reminders: [PlantReminder] = []
//
//    func addReminder(_ reminder: PlantReminder) {
//        reminders.append(reminder)
//    }
//}

