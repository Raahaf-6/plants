import SwiftUI

struct MyPlantsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("My Plants🌱")
                    .bold()
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)

                // Rectangle
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
                    .padding(.bottom, 90)

                // Image
                Image("planto") // Replace with your image name
                    .resizable()
                    .frame(width: 164, height: 200)
                    .scaledToFit()

                Spacer().frame(height: 30)
                
                // First Text
                Text("Start your plant journey!")
                    .font(.system(size: 25, weight: .semibold))
                    .multilineTextAlignment(.center)

                // Add space between the first and second texts
                Spacer().frame(height: 20)

                // Second Text
                Text("Now all your plants will be in one place and we will help you take care of them :)🪴")
                    .frame(width: 330, height: 50)
                    .font(.system(size: 16, design: .default)) // Replace .default with .serif or .rounded for different typefaces
                    .foregroundColor(Color(red: 0.6235294117647059, green: 0.6235294117647059, blue: 0.5686274509803921))
                    .multilineTextAlignment(.center)

                // Add space between the second text and the button
                Spacer().frame(height: 30)

                // Button
                Button(action: {
                    // Action for button
                }) {
                    Text("Set Plant Reminder")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(width: 280, height: 40)
                        .background(Color.greeen) // Change color as needed
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }
            .padding(22)
            .padding(.bottom, 170)
        }
    }
}

struct MyPlantsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlantsView()
    }
}
