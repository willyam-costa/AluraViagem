//
//  MapaView.swift
//  aluraViagens
//
//  Created by victor willyam on 1/4/22.
//

import SwiftUI
import MapKit
struct MapaView: UIViewRepresentable {
    
    
    var coordenada: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> some MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(coordenada: viagens[0].localizacao)
    }
}
