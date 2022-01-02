//
//  ContentView.swift
//  aluraViagens
//
//  Created by victor willyam on 12/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        GeometryReader { view in
            
            //MARK: - VStack principal
            VStack {
                HeaderView()
                    .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                List(viagens) { viagem in
                    CelulaViagemView(viagem: viagem)
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    } 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

