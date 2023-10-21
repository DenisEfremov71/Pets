//
//  ListComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-21.
//

import SwiftUI

struct ListComponent: UIComponent {

    let id = UUID()
    let uiModel: ListUIModel

    func render() -> AnyView {
        ForEach(uiModel.rows, id: \.id) { row in
            RowComponent(uiModel: row).render()
        }
        .toAnyView()
    }

}
