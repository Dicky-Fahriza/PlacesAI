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
    give me recommendation place in Bengkulu. Provide the response as an array of JSON as
    {
        [
            "place": "place",
            "activity": "activities",
            "proce": "Rp 35.000"
        ]
    
    }
    
    only. Remove any backticks.

    """
}
