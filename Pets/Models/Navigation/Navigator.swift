//
//  Navigator.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import SwiftUI

struct SheetView<V: View>: View {
    @State private var isPresentd: Bool = false
    let content: () -> V
    let destinationView: AnyView

    var body: some View {
        content().onTapGesture {
            isPresentd = true
        }.sheet(isPresented: $isPresentd, content: {
            destinationView
        })
    }
}

class Navigator {

    static func perform<V: View>(action: Action, content: @escaping () -> V) -> AnyView {
        var destinationView: AnyView

        switch action.destination {
        case .petDetails:
            destinationView = Text("Pet Details").toAnyView()
        }

        switch action.type {
        case .sheet:
            return SheetView(content: {
                content()
            }, destinationView: destinationView).toAnyView()
        }
    }

}
