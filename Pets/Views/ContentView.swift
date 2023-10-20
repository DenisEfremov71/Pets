//
//  ContentView.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-18.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var petListVM = PetListViewModel(service: LocalService())

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(petListVM.components, id: \.id) { component in
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
