//
//  SettingsView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import SwiftUI
import CoreLocation


struct SettingsView: View {
    
    @State private var toggleLocation: Bool = false
    @State private var darkMode: Bool = false
    @State private var saveHistory: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle("Permitir acesso à localização", isOn: $toggleLocation)
                    .disabled(true)
                Toggle("Modo Escuro", isOn: $darkMode)
                    .disabled(true)
                Toggle("Salvar Histórico", isOn: $saveHistory)
                    .disabled(true)
                NavigationLink {
                    Text("Termos de Uso")
                } label: {
                    Text("Termos de Uso")
                }
                NavigationLink {
                    Text("Sobre")
                } label: {
                    Text("Sobre")
                }
            }
            .listStyle(.inset)
            .navigationTitle("Configurações")
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


