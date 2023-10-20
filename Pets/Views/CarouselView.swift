//
//  CarouselView.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: CarouselUIModel

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(uiModel.imageUrls, id: \.self) { url in
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .frame(width: 200, height: 200)
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CarouselView(uiModel: CarouselUIModel(imageUrls: []))
}
