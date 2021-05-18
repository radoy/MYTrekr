//
//  Locations.swift
//  MYTrekr
//
//  Created by Muhammad Yusrizal on 18/05/21.
//

import Foundation

class Locations: ObservableObject {
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
    let places: [Location]
    var primary: Location {
        places[0]
    }
}
