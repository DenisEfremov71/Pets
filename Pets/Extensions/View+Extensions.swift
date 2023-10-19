//
//  View+Extensions.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
