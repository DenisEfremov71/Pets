//
//  TextRowComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-21.
//

import SwiftUI

struct TextRowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: TextRowUIModel

    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }

}
