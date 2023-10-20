//
//  UIComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import SwiftUI

protocol UIComponent {
    var id: UUID { get }

    func render() -> AnyView
}
