//
//  PlaceRow.swift
//  PlacesAI
//
//  Created by MacBook Pro on 24/04/24.
//

import SwiftUI

struct PlaceRow: View {
    var place: Place
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(place.activity)
                .font(.system(.title3, design: .rounded))
            
            HStack {
                Group {
                    Image(systemName: "pin")
                    Text(place.place)
                }
                .font(.subheadline)
                
                Spacer()
                
                HStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 20, height: 20)
                    Text("Rp\(place.price)")
                        .font(.subheadline)
                }
                .padding([.vertical, .horizontal], 8)
                .background(Color(.systemGroupedBackground))
                .clipShape(Capsule())
                
            }
        }
    }
}

#Preview {
    PlaceRow(place: Place.dummmyData[0])
        .padding()
}

