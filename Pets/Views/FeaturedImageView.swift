//
//  FeaturedImageView.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import SwiftUI

struct FeaturedImageView: View {
    let url: URL

    var body: some View {
        VStack {
            AsyncImage(url: url) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    FeaturedImageView(url: URL(string: "https://images.unsplash.com/photo-1517331156700-3c241d2b4d83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80")!)
}
