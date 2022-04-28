//
//  SearchingMedicineView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import SwiftUI

struct SearchingMedicineView: View {
    
    
    @State private var searchMedicine = ""
    @EnvironmentObject private var medicines: Medicine
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(searchMedicineResults, id: \.self) { medicine in
                        NavigationLink {
//                            MedicineMapView()
                            MedicineMapView(medicineName: medicine)
                        } label: {
                            Text(medicine)
                        }
                    }
                } header: {
                    HStack {
                        Text("🤔 Qual remédio você precisa?")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Remédios Salvos")
            .searchable(text: $searchMedicine, placement: .navigationBarDrawer(displayMode: .always))
        }
        .navigationViewStyle(.stack)
    }
    
    var searchMedicineResults: [String] {
        if searchMedicine.isEmpty {
            return medicines.medicinesAll
        } else {
            return medicines.medicinesAll.filter {
                $0.contains(searchMedicine)
            }
        }
    }
}

struct SearchingMedicineView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingMedicineView()
    }
}
