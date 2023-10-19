//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {

    let uiModel: FeaturedImageUIModel

    var uniqueId: String {
        ComponentType.featuredImage.rawValue
    }

    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }
        .toAnyView()
    }

}
