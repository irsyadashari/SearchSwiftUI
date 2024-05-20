//
//  ViewModelTests.swift
//  SearchSwiftUITests
//
//  Created by Irsyad Ashari on 20/05/24.
//

import XCTest
@testable import SearchSwiftUI

final class ViewModelTests: XCTestCase {
    var sut: ViewModel!
    var testItems: [Item]!
    
    override func setUp() {
        super.setUp()
        sut = ViewModel()
        
        let expectedItems: [Item] =  [
            Item(name: "Sepatu", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
            Item(name: "Sarung", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
            Item(name: "Sabun", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
            Item(name: "Teh", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
            Item(name: "Kopi", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
            Item(name: "Baju", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false),
            Item(name: "Celana", description: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", isFavorited: false)
        ]
        
        testItems = expectedItems
        sut.items = testItems
    }
    
    override func tearDown() {
        sut = nil
        testItems = nil
    }
    
    func testSearchItem_GivenEmptyString_ShouldReturnAllItems() {
        let searchedItems = sut.searchItem(name: "")
        XCTAssertEqual(searchedItems.count, testItems.count)
    }
    
    func testSearchItem_GivenString_ShouldReturnItemWhichNameContains() {
        let searchedItems = sut.searchItem(name: "Sa")
        
        let expectedItems: [Item] =  [
           testItems[1],
           testItems[2]
        ]
        
        XCTAssertEqual(searchedItems, expectedItems)
    }
    
    func testSearchItem_WhenSearchedDoesntMatchAnyItem_ShouldReturnEmpty() {
        let searchedItems = sut.searchItem(name: "any item")
        let expectedItems: [Item] =  []
        
        XCTAssertEqual(searchedItems, expectedItems)
    }

    func testFavoritedItem_WhenNothingIsFavorited_ThenReturnEmpty() {
        let searchedItems = sut.favoritedItem()
        let expectedItems: [Item] =  []
        
        XCTAssertEqual(searchedItems, expectedItems)
    }
    
    func testFavoritedItem_WhenFirstItemFavorited_ThenReturnFirstItem() {
        let firstItemId = testItems[0].id
        sut.toggleFavorite(id: firstItemId)
        let favoritedItems: [Item] = sut.favoritedItem()
        let expectedItem: [Item] = [sut.items[0]]
        
        XCTAssertEqual(favoritedItems, expectedItem)
    }
}
