//
//  UIComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }

    func render() -> AnyView
}
