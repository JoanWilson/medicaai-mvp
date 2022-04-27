//
//  MedicineView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 27/04/22.
//

import SwiftUI

struct MedicineView: View {
    
    private var medicineName: String
    @EnvironmentObject private var medicines: Medicine
    init(medicineName: String) {
        self.medicineName = medicineName
    }
    
    @State private var isActiveFavorite: Bool = false
    
    @State private var healthCenters:[(name: String, value: String)] = [(name: "Posto de Saúde Messejana", value:"R. Jorge Dumar, 1501"), (name: "Posto de Saúde Messejana", value:"R. Jorge Dumar, 1501"),(name: "Posto de Saúde Messejana", value:"R. Jorge Dumar, 1501"),(name: "Posto de Saúde Messejana", value:"R. Jorge Dumar, 1501"),(name: "Posto de Saúde Messejana", value:"R. Jorge Dumar, 1501")]
    
    var body: some View {
        
        VStack {
            
            List {
                ForEach(healthCenters, id: \.self) { (center, addr) in
                    Text(center, addr)
                }
            }
            .listStyle(.plain)
            Link("Map Cupertino", destination: URL(string:"http://maps.apple.com/?q=cupertino")!)
        }
        .navigationTitle(medicineName)
        .toolbar {
            Button {
                if medicines.medicinesSaved.filter({ object in medicines.medicinesSaved.contains(medicineName)}).count == 0 {
                    medicines.medicinesSaved.append(medicineName)
                } else {
                    medicines.medicinesSaved.remove(at: medicines.medicinesSaved.firstIndex(of: medicineName)!)
                }
                if !isActiveFavorite {
                    isActiveFavorite = true
                } else {
                    isActiveFavorite = false
                }
            } label: {
                if !isActiveFavorite{
                    Image(systemName: "star")
                    
                } else {
                    Image(systemName: "star.fill")
                }
            }
        }
    }
}

struct MedicineView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingMedicineView()
    }
}
