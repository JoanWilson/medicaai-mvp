//
//  SavedMedicinesView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import SwiftUI

struct SavedMedicinesView: View {
    
    @State var text: String = ""
    @State private var searchMedicine = ""
    @EnvironmentObject private var medicines: Medicine
    
    var body: some View {
        NavigationView {
            if medicines.medicinesSaved.isEmpty {
                Text("Você ainda não favoritou nenhum remédio ☹️")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .navigationTitle("Remédios Salvos")
            } else {
                List {
                    Section {
                        ForEach(searchMedicineResults, id: \.self) { medicine in
                            NavigationLink {
                                MedicineView(medicineName: medicine)
                            } label: {
                                Text(medicine)
                            }
                        }
                    } header: {
                        HStack {
                            Text("🤔 Meus Remédios")
                        }
                    }
                }.navigationTitle("Remédios Salvos")
                    .searchable(text: $searchMedicine, placement: .navigationBarDrawer(displayMode: .always))
            }
        }
    }
    
    var searchMedicineResults: [String] {
        if searchMedicine.isEmpty {
            return medicines.medicinesSaved
        } else {
            return medicines.medicinesSaved.filter {
                $0.contains(searchMedicine)
            }
        }
    }

}

struct SavedMedicinesView_Previews: PreviewProvider {
    static var previews: some View {
        SavedMedicinesView()
        
    }
}
