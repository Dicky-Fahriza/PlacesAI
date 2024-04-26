//
//  Place.swift
//  PlacesAI
//
//  Created by MacBook Pro on 24/04/24.
//

import Foundation

struct Place: Codable, Hashable {
    var place: String
    var activity: String
    var price: String
}

extension Place {
    static let dummmyData: [Place] = [
        Place(
            place: "Baso Dams",
            activity: "Eat meat ball",
            price: "35.000"
        )
    ]
}
