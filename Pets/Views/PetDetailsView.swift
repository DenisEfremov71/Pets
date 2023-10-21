//
//  PetDetailsView.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import SwiftUI

struct PetDetailsView: View {

    let petId: Int
    @StateObject private var petDetailsVM: PetDetailsViewModel

    init(petId: Int) {
        self.petId = petId
        _petDetailsVM = StateObject(wrappedValue: PetDetailsViewModel(service: WebService()))
    }

    var body: some View {
        ScrollView {
            ForEach(petDetailsVM.components, id: \.id) { component in
                component.render()
            }
        }
        .padding(.top, 16)
        .onAppear {
            Task {
                await petDetailsVM.load(petId: petId)
            }
        }
    }
}

#Preview {
    PetDetailsView(petId: 3)
}
