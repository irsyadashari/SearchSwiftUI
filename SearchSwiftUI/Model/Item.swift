//
//  Item.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import Foundation

struct Item: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let description: String
    var isFavorited: Bool
    
    mutating func toggleFavorite() {
        isFavorited = !isFavorited
    }
}
