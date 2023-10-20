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
                ForEach(uiModel.items) { item in
                    Navigator.perform(action: uiModel.action, payload: item) {
                        AsyncImage(url: item.imageUrl) { image in
                            image
                                .resizable()
                                .frame(width: 200, height: 200)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    CarouselView(uiModel: CarouselUIModel(items: [], action: Action(type: .sheet, destination: .petDetails)))
}
