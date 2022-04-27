//
//  TabManagerView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import SwiftUI

struct TabManagerView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            SavedMedicinesView()
                .tabItem {
                    Label("Favoritos", systemImage: "star")
                }
                .tag(1)
            
            SearchingMedicineView()
                .tabItem {
                    Label("Remédios", systemImage: "magnifyingglass")
                }
                .tag(0)
            SettingsView()
                .tabItem {
                    Label("Configurações", systemImage: "gearshape")
                }
                .tag(2)
        }
    }
}

struct TabManagerView_Previews: PreviewProvider {
    static var previews: some View {
        TabManagerView()
    }
}
