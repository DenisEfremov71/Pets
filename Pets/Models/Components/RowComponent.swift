//
//  RowComponent.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-21.
//

import SwiftUI

struct RowComponent: UIComponent {

    let id = UUID()
    let uiModel: RowUIModel

    func render() -> AnyView {

        HStack(alignment: .top) {
            if let imageUrl = uiModel.imageUrl {
                AsyncImage(url: imageUrl) { image in
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }
            }

            VStack(alignment: .leading) {
                Text(uiModel.title)
                if let subTitle = uiModel.subTitle {
                    Text(subTitle)
                        .opacity(0.5)
                }
                if let description = uiModel.description {
                    Text(description)
                        .font(.footnote)
                }
            }
            .padding(.horizontal)
        }
        .padding()
        .toAnyView()
    }
}
