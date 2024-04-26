//
//  Constant.swift
//  PlacesAI
//
//  Created by MacBook Pro on 24/04/24.
//

import Foundation

struct Constant {
    static let apiKey = "AIzaSyBEOYTGBVpbB8lwc8Hkvjj4O9C2er-ltvI"
    static let prompt = """
    give me inspiration for activities that can be done during the day in the city of Bengkulu. Provide the response as an array of JSON as
    {
        [
            "place": "name",
            "activity": "activities",
            "price": "5.000"
        ]
    
    }
    
    only. Remove any backticks.

    """
}
