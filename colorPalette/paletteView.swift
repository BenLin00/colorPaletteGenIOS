// paletteView.swift

import SwiftUI

struct paletteView: View {
    @Binding var hexCodes: [String]
    @Binding var showNotification: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<hexCodes.count, id: \.self) { index in
                    cardRow(hexCode: $hexCodes[index], showNotification: $showNotification)
                }
            }
        }
    }
}

struct paletteView_Previews: PreviewProvider {
    static var previews: some View {
        paletteView(hexCodes: .constant(Array(repeating: "#FFFFFF", count: 4)), showNotification: .constant(false))
    }
}
