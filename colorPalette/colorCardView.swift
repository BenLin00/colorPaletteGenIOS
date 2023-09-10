// colorCardView.swift

import SwiftUI

struct colorCardView: View {
    @Binding var hexCode: String
    
    var body: some View {
        let rectangleColor = colorFromHex(hexCode)
        
        VStack {
            Rectangle()
                .frame(width: 140, height: 140)
                .foregroundColor(rectangleColor)
                .cornerRadius(10)
                .padding([.top, .leading, .trailing], 10)
            Text(hexCode)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .padding(.bottom, 10)
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

struct colorCardView_Previews: PreviewProvider {
    static var previews: some View {
        // Provide a constant binding for the preview
        colorCardView(hexCode: .constant("#FF5733"))
    }
}
