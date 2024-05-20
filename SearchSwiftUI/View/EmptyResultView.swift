//
//  EmptyResultView.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

struct EmptyResultView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding(.bottom, 8)
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.bottom, 4)
            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    EmptyResultView(title: "Not Found", description: "Try another terms")
}
