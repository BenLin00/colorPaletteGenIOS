import SwiftUI

struct ContentView: View {
    @State var hexCodes: [String] = Array(repeating: "", count: 4).map { _ in generateHexCode() }
    @State var showNotification: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
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
                
                paletteView(hexCodes: $hexCodes, showNotification: $showNotification)
            }
            .padding()
            
            if showNotification {
                Text("Copied to clipboard")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .transition(.move(edge: .top))
            }
        }
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
