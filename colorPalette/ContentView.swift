import SwiftUI

struct ContentView: View {
    @State var hexCodes: [String] = Array(repeating: generateHexCode(), count: 4)
    
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
                    .frame(height: 1)
                    .foregroundColor(.black)
            }
            .padding(.bottom, 10)
            
            Button("Shuffle All") {
                shuffleAll()
            }
            .padding()
            .background(Color.peachColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            // Add paletteView here
            paletteView(hexCodes: $hexCodes)
        }
        .padding()
    }
    
    func shuffleAll() {
        hexCodes = hexCodes.map { _ in generateHexCode() }
    }
}

extension Color {
    static let peachColor = Color(red: 0.9, green: 0.6, blue: 0.4)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
