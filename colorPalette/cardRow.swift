// Copyright © 2023 Snap, Inc. All rights reserved.

import SwiftUI

struct cardRow: View {
    var body: some View {
        HStack(spacing: 10) {
            colorCardView()
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
}
struct cardRow_Previews: PreviewProvider {
    static var previews: some View {
        cardRow()
    }
}
