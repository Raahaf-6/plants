import SwiftUI

struct todayReminders: View {
    var body: some View {
        NavigationView {
            VStack {
                // Navigation Title
                Text("My Plants 🌱")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)

                // Thin gray rectangle
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
                    .padding(.bottom,1)

                // Today label
               
                Text("Today")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 200, height: 100)
                    .padding(.trailing, 290)
                   
                
                HStack {
                    Image(systemName: "location")
                        .foregroundColor(.gray)
                    Text("in Bedroom")
                        .foregroundColor(Color.gray)
                        .frame(alignment: .leading)
                        .padding(.trailing,210)
                                           
               }
                
                HStack{
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                    
                    Text("Pothos")
                        .font(.title) // Increased font size
                    Spacer()
                    
                }
                HStack{
                    HStack{
                        Image(systemName: "sun.max")
                            .foregroundColor(.yelloww)
                        Text("Full sun")
                            .foregroundColor(Color.yelloww)
                        
                    }
                    .padding(.horizontal, 12) // Increase horizontal padding
                    .padding(.vertical, 6) // Maintain vertical padding
                    .background(Color.gray.opacity(0.2)) // Gray background
                    .cornerRadius(12) // Rounded corners
                    
                    HStack{
                        Image(systemName: "drop")
                            .foregroundColor(.bluee)
                        Text("20-50 ml ")
                            .foregroundColor(Color.bluee)
                        
                    }
                            .padding(.horizontal, 12) // Increase horizontal padding
                            .padding(.vertical, 6) // Maintain vertical padding
                            .background(Color.gray.opacity(0.2)) // Gray background
                            .cornerRadius(12) // Rounded corners
                    Spacer()
                }
                
                Divider()
                .padding()
                
                
                HStack {
                    Image(systemName: "location")
                        .foregroundColor(.gray)
                    Text("in Bedroom")
                        .foregroundColor(Color.gray)
                        .frame(alignment: .leading)
                        .padding(.trailing,210)
                                           
               }
                
                HStack{
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                    
                    Text("Pothos")
                        .font(.title) // Increased font size
                    Spacer()
                    
                }
                HStack{
                    HStack{
                        Image(systemName: "sun.max")
                            .foregroundColor(.yelloww)
                        Text("Full sun")
                            .foregroundColor(Color.yelloww)
                        
                    }
                    .padding(.horizontal, 12) // Increase horizontal padding
                    .padding(.vertical, 6) // Maintain vertical padding
                    .background(Color.gray.opacity(0.2)) // Gray background
                    .cornerRadius(12) // Rounded corners
                    
                    HStack{
                        Image(systemName: "drop")
                            .foregroundColor(.bluee)
                        Text("20-50 ml ")
                            .foregroundColor(Color.bluee)
                        
                    }
                            .padding(.horizontal, 12) // Increase horizontal padding
                            .padding(.vertical, 6) // Maintain vertical padding
                            .background(Color.gray.opacity(0.2)) // Gray background
                            .cornerRadius(12) // Rounded corners
                   
                Spacer()
                   
                }
                Divider()
                
            Spacer()
                
            
            }
            
            .padding()
        }
    }
}


struct todayReminders_Previews: PreviewProvider {
    static var previews: some View {
        todayReminders()
    }
}
