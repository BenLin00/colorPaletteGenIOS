// cardRow.swift

import SwiftUI

struct cardRow: View {
    @State var hexCode: String = generateHexCode()  // Keep @State here
    
    var body: some View {
        HStack(spacing: 10) {
            colorCardView(hexCode: $hexCode)  // Pass a binding to hexCode
                .padding()
            VStack {
                Button(action: {
                    // Action for the first button
                }) {
                    Text("Copy Hexcode")
                    .padding()
                    .frame(width: 150)
                    .background(Color(UIColor(red: 1.0, green: 0.98, blue: 0.89, alpha: 1.0)))
                    .foregroundColor(.black)
                    .cornerRadius(30)
                }.shadow(radius: 5)
                               
                Button(action: {
                    // Action for the second button
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
        hexCode = generateHexCode()  // This will now update the hexCode in both cardRow and colorCardView
    }
}


struct cardRow_Previews: PreviewProvider {
    static var previews: some View {
        cardRow()
    }
}
