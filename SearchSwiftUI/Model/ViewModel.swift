//
//  ViewModel.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var items: [Item] =  [
        Item(name: "Sepatu", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
        Item(name: "Sabun", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
        Item(name: "Teh", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
        Item(name: "Kopi", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
        Item(name: "Baju", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
        Item(name: "Celana", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false)
    ]
    
    func searchItem(name: String) -> [Item] {
        guard !name.isEmpty else { return items }
        
        return items.filter { $0.name.lowercased().contains(name.lowercased()) }
    }
    
    func getItem(at index: Int) -> Item {
        return items[index]
    }
    
    func toggleFavorite(id : UUID) {
        if let index = items.firstIndex(where: { $0.id == id }) {
            items[index].toggleFavorite()
        }
    }
}
