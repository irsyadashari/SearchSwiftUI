//
//  ProductCellView.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

struct ProductCellView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var item: Item
    
    private var favoriteImage : Image {
        return item.isFavorited ?  Image(systemName: "star.fill") :  Image(systemName: "star")
    }
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 30, height: 30)
            
            VStack {
                Text(item.name)
                    .frame(alignment: .leading)
                    .font(.headline)
                
                Text(item.description)
                    .frame(alignment: .leading)
                    .lineLimit(4)
                    .truncationMode(.head)
            }
            .padding(.leading, 16)
            
            Spacer()
            
            favoriteImage
                .resizable()
                .frame(width: 30, height: 30)
                .onTapGesture {
                    print("Image index: \(index) tapped!")
                    viewModel.toggleFavorite(id: item.id)
                }
        }
    }
}

#Preview {
    ProductCellView( item: Item(name: "Teh", description: "Teh pucuk yang asli", isFavorited: false))
}
