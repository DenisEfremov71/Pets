//
//  ContentView.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-18.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var petListVM = PetListViewModel(service: WebService())

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(petListVM.components, id: \.uniqueId) { component in
                    component.render()
                }
            }.onAppear {
                Task {
                    await petListVM.load()
                }
            }
            .navigationTitle("Pets")
        }
    }
}

#Preview {
    ContentView()
}
