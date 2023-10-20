//
//  CarouselComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import SwiftUI

struct CarouselComponent: UIComponent {

    let uiModel: CarouselUIModel
    let id = UUID()

    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
}
