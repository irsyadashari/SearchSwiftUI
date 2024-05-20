//
//  Item.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import Foundation

struct Item: Hashable, Identifiable, Equatable {
    let id = UUID()
    let name: String
    let description: String
    var isFavorited: Bool
    
    mutating func toggleFavorite() {
        isFavorited = !isFavorited
    }
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id
    }
}
