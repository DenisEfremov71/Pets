//
//  EmptyComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-21.
//

import SwiftUI

struct EmptyComponent: UIComponent {

    let id = UUID()

    func render() -> AnyView {
        EmptyView().toAnyView()
    }

}
