//
//  MedicineMapView.swift
//  MedicaAi
//
//  Created by Joan Wilson Oliveira on 27/04/22.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MedicineMapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let location = [
        Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141))
    ]
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $mapRegion)
                .ignoresSafeArea()
            Button{
                
            } label: {
                Text("test")
            }
        }
    }
}

struct MedicineMapView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineMapView()
    }
}
