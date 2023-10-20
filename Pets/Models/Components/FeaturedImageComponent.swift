//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {

    let uiModel: FeaturedImageUIModel
    let id = UUID()

    func render() -> AnyView {
        FeaturedImageView(url: uiModel.imageUrl).toAnyView()
    }

}
