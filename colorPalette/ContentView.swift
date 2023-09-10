
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.peachColor)
            
            VStack {
                Text("Color Palette Generator")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.peachColor)
                
                Rectangle()
                    .frame(height: 1) // Set the height of the line
                    .foregroundColor(.black)
            }
            .padding(.bottom, 10) // Add space below the text and the line
            .frame(maxHeight: .infinity, alignment: .top)
            
            // Additional content below the line
            
            paletteView()
            
        }
        .padding()
    }
}

extension Color {
    static let peachColor = Color(red: 0.9, green: 0.6, blue: 0.4) // Adjust RGB values as needed
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
