import SwiftUI

struct cardRow: View {
    @Binding var hexCode: String
    @Binding var showNotification: Bool

    var body: some View {
        HStack(spacing: 10) {
            colorCardView(hexCode: $hexCode)  // Pass binding to hexCode
            VStack {
                Button(action: {
                    copyToClipboard()
                }) {
                    Text("Copy Hexcode")
                    .padding()
                    .frame(width: 150)
                    .background(Color(UIColor(red: 1.0, green: 0.98, blue: 0.89, alpha: 1.0)))
                    .foregroundColor(.black)
                    .cornerRadius(30)
                }.shadow(radius: 5)
            
                Button(action: {
                    shuffleColor()
                }) {
                    Text("Shuffle Color")
                    .padding()
                    .frame(width: 150)
                    .background(Color(UIColor(red: 0x99/255, green: 0xE1/255, blue: 0xD9/255, alpha: 1.0)))
                    .foregroundColor(.black)
                    .cornerRadius(30)
                }.shadow(radius: 5)
            }
        }
    }
    
    func shuffleColor() {
        hexCode = generateHexCode()
    }
    
    func copyToClipboard() {
        UIPasteboard.general.string = hexCode
        withAnimation {
            showNotification = true
        }
        
        // Hide notification after 2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation {
                showNotification = false
            }
        }
    }
}

struct cardRow_Previews: PreviewProvider {
    static var previews: some View {
        cardRow(hexCode: .constant("#FF5733"), showNotification: .constant(false))  // Provide constant bindings for preview
    }
}
