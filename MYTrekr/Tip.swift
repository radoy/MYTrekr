//
//  Tip.swift
//  MYTrekr
//
//  Created by Muhammad Yusrizal on 18/05/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
