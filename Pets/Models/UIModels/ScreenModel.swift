//
//  ScreenModel.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
}

enum ComponentError: Error {
    case decodingError
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponents() throws -> [UIComponent] {
        var components: [UIComponent] = []

        for component in self.components {
            switch component.type {
            case .featuredImage:
                guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                components.append(FeaturedImageComponent(uiModel: uiModel))
            }
        }

        return components
    }
}

