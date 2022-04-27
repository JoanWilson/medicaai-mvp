//
//  Medicine.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import Foundation


class Medicine: ObservableObject {
    
    init(allMedicine: [String], savedMedicine: [String]) {
        self.medicinesAll = allMedicine
        self.medicinesSaved = []
        
    }
    
    @Published var medicinesAll: [String]
    
    @Published var medicinesSaved: [String]
}
