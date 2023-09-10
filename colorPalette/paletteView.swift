// paletteView.swift

import SwiftUI

struct paletteView: View {
    @Binding var hexCodes: [String]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<hexCodes.count, id: \.self) { index in
                    cardRow(hexCode: $hexCodes[index])
                }
            }
        }
    }
}

struct paletteView_Previews: PreviewProvider {
    static var previews: some View {
        paletteView(hexCodes: .constant(Array(repeating: "#FFFFFF", count: 4)))
    }
}
