//
//  ContentView.swift
//  plants
//
//  Created by Rahaf on 20/10/2024.
//

import SwiftUI

struct MyPlantsView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Text("My Plants🌱")
                    .bold()
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
              //Rectangle
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
                    .padding(.bottom,170)
                    
                // Image
                Image("planto") // Replace with your image name
                    .resizable()
                    .frame(width: 164, height: 200)
                    .scaledToFit()
                   
                    

                // First Text
                Text("Start your plant journey!")
                    .font(.system(size: 25, weight: .semibold))
                    .multilineTextAlignment(.center)

                // Second Text
                Text("Now all your plants will be in one place and we will help you take care of them :)🪴")
                    .font(.system(size: 16, design: .default)) // Replace .default with .serif or .rounded for different typefaces
                    .foregroundColor(Color(red: 0.6235294117647059, green: 0.6235294117647059, blue: 0.5686274509803921))
                    .multilineTextAlignment(.center)

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
            .padding(.bottom,190)
        }
    }
}

struct MyPlantsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPlantsView()
    }
}
