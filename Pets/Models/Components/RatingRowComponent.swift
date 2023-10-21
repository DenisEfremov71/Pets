//
//  RatingRowComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-21.
//

import SwiftUI

struct RatingRowComponent: UIComponent {

    let id = UUID()
    let uiModel: RatingRowUIModel

    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating)).toAnyView()
    }

}
