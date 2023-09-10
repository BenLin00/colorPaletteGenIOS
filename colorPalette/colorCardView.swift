// Copyright © 2023 Snap, Inc. All rights reserved.

import SwiftUI

struct colorCardView: View {
    var body: some View {
        let hexCode = generateHexCode()
        let rectangleColor = colorFromHex(hexCode)
        
        GeometryReader { geometry in
            VStack {
                Rectangle()
                    .frame(width: 140, height: 140) // Square shape
                    .foregroundColor(rectangleColor)
                    .cornerRadius(10)
                    .padding([.top, .leading, .trailing], 10)
                Text(hexCode)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
            }
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
        }
    }
    
    func generateHexCode() -> String {
            let characters = "0123456789ABCDEF"
            var hexCode = "#"
            for _ in 0..<6 {
                let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
                hexCode.append(characters[characters.index(characters.startIndex, offsetBy: randomIndex)])
            }
            return hexCode
        }
    
    func colorFromHex(_ hex: String) -> Color {
            var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

            var rgb: UInt64 = 0

            Scanner(string: hexSanitized).scanHexInt64(&rgb)

            let red = Double((rgb & 0xFF0000) >> 16) / 255.0
            let green = Double((rgb & 0x00FF00) >> 8) / 255.0
            let blue = Double(rgb & 0x0000FF) / 255.0

            return Color(red: red, green: green, blue: blue)
        }
}

struct colorCardView_Previews: PreviewProvider {
    static var previews: some View {
        colorCardView()
    }
}
