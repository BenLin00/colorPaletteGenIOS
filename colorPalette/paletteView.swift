// Copyright © 2023 Snap, Inc. All rights reserved.

import SwiftUI

struct paletteView: View {
    var body: some View {
        VStack {
            cardRow()
            cardRow()
            cardRow()
        }
    }
}

struct paletteView_Previews: PreviewProvider {
    static var previews: some View {
        paletteView()
    }
}
