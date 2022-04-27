//
//  ContentView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 26/04/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        SplashScreenView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Medicine(allMedicine: [
                "Aciclovir 200mg - comprimido",
                "Ácido acetilsalicílico 100 mg – comprimido",
                "Ácido fólico 5 mg comprimido",
                "Albendazol 40 mg/ml suspensão oral",
                "Albendazol 400 mg comprimido",
                "Amiodarona 200mg – comprimido",
                "Amoxicilina 50 mg/ml - suspensão oral",
                "Amoxicilina 500mg – cápsula",
                "Amoxicilina + clavulanato 50mg + 12,5mg/ml - suspensão oral",
                "Amoxicilina + clavulanato 500 + 125mg - comprimido",
                "Anlodipino 5 mg – comprimido",
                "Atenolol 50 mg – comprimido",
                "Azitromicina 500 mg – comprimido",
                "Azitromicina 40mg/ml - suspensão oral",
                "Beclometasona 250 mcg – spray",
                "Benzilpenincilina Benzatina 1.200.000 U/mL",
                "Benzilpenincilina Procaína 400.000 U/mL",
                "Captopril 25 mg – comprimido",
                "Carbonato de calcio 600 mg + colocalciferol 400 UI comprimido",
                "Carvedilol 25mg - comprimido",
                "Carvedilol 6,25mg - comprimido",
                "Cefalexina 50 mg/ml - suspensão oral",
                "Cefalexina 500 mg – cápsula",
                "Ciprofloxacino 500 mg – comprimido",
                "Cloreto de sódio 0,9% solução nasal",
                "Dexametasona 0,1% creme",
                "Digoxina 0,25 mg – comprimido",
                "Dipirona 500 mg – comprimido",
                "Dipirona 500 mg/ml 2mL - sol. Injetável",
                "Dipirona 500mg/mL frasco-gotas 20mL – sol.oral",
                "Doxazosina 2mg - comprimido",
                "Eritromicina 50mg/ml - suspensão oral",
                "Espiramicina 500mg - comprimido",
                "Enalapril 20 mg – comprimido",
                "Espironolatona 25 mg – comprimido",
                "Fluconazol 150 mg - comprimido",
                "Folinato de Cálcio (ácido folínico) 15mg - comprimido",
                "Furosemida 40 mg – comprimido",
                "Glibenclamida 5 mg – comprimido",
                "Gliclazida 60 mg – comprimido",
                "Hidroclorotiazida 25 mg – comprimido",
                "Ibuprofeno 600mg - comprimido",
                "Isossorbida (mononitrato) 40 mg – comprimido",
                "Levodopa 200mg + Benserazida 50mg - comprimido ou cápsula",
                "Levotiroxina 100 mcg – comprimido",
                "Levotiroxina 25 mcg – comprimido",
                "Lidocaina 2% gel - bisnaga",
                "Loratadina 1 mg/ml solução oral",
                "Loratadina 10 mg comprimido",
                "Losartana 50 mg – comprimido",
                "Metformina 500 mg – comprimido",
                "Metildopa 250 mg – comprimido",
                "Metoclopramida 4 mg/ml - sol. Oral",
                "Metoclopramida 5 mg/ml 2mL - sol. injetável",
                "Metronidazol 250 mg – comprimido",
                "Metronidazol 40 mg/ml - suspensão oral",
                "Metronidazol 10% creme vaginal",
                "Miconazol nitrato 2% creme dermatológico",
                "Miconazol nitrato 2% creme vaginal",
                "Nistatina 100.000 UI/ml suspensão oral",
                "Omeprazol 20 mg – cápsula",
                "Óleo mineral",
                "Paracetamol 200 mg/ml 15mL - suspensão oral",
                "Paracetamol 500mg – comprimido",
                "Permetrina 1% loção – frasco",
                "Permetrina 5% loção – frasco",
                "Pirimetamina 25mg - comprimido",
                "Prednisolona 3 mg/ml - sol. Oral",
                "Prednisona 20 mg – comprimido",
                "Prometazina (cloridrato) 25 mg/ml 2mL - sol. Injetável",
                "Propranolol (cloridrato) 40 mg – comprimido",
                "Ranitidina 150 mg comprimido",
                "Sais p/ reidratação oral 27,9g – envelope",
                "Salbutamol (sulfato) 100mcg/dose - aerosol spray uso oral",
                "Sinvastatina 20 mg comprimido",
                "Solução fisiológica 500mL",
                "Sulfadiazina 500mg - comprimido",
                "Sulfadiazina de prata 1% - bisnaga",
                "Sulfametoxazol + trimetoprim 40 + 8 mg/ml - suspensão oral",
                "Sulfametoxazol + trimetoprima 400 + 80 mg – comprimido",
                "Sulfato Ferroso 125mg/mL 30mL",
                "Sulfato ferroso 40 mg – comprimido",
                "Timolol maleato 0,5% colírio - tubo",
                "Varfarina sódica 5 mg – comprimido"
            ], savedMedicine:[]))
    }
}
